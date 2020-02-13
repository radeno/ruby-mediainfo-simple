require 'English'
require 'rexml/document'
require 'media_info/stream_factory'

module MediaInfo
  class Parser
    def self.call(file_path)
      new(file_path).parse
    end

    attr_reader :file_path

    def initialize(file_path)
      @file_path = file_path

      # check for MediaInfo CLI
      raise StandardError, 'mediainfo command-line interface not installed' unless cli_available?
    end

    def parse
      raw_xml_response = execute_command

      raise "Execution of `#{command}` failed: #{raw_xml_response.inspect}" unless $CHILD_STATUS.success?

      create_streams(raw_xml_response)
    end

    private

    def command
      "#{cli_path} '#{file_path}' --Full --Language=raw --BOM --Output=XML"
    end

    def execute_command
      %x(echo `#{command} 2>&1`)
    end

    def cli_path
      %x(echo `which mediainfo`).strip
    end

    def cli_available?
      !cli_path.empty? && File.exist?(File.expand_path(cli_path))
    end

    def create_streams(raw_xml_response)
      parse_xml_tracks(raw_xml_response).map do |track|
        elements = make_elements_hash(
          track.children.select { |child| child.is_a? REXML::Element }
        )

        StreamFactory.create(track.attributes['type'], elements)
      end
    end

    def parse_xml_tracks(raw_xml)
      REXML::Document.new(raw_xml).elements.to_a('/MediaInfo/media/track')
    end

    def make_elements_hash(children)
      children.each_with_object({}) do |element, memo|
        tag_name = convert_element_name(element.name).to_sym
        memo[tag_name] = element.text.strip
      end
    end

    # Convert MediaInfo attribute name to Ruby style
    # eg: Image_Format_WithHint_List to image_format_with_hint_list
    def convert_element_name(tag_name)
      # add underscore between capital case
      tag_name = tag_name.gsub(/(.)([A-Z])/, '\1_\2')
      # replace several '_' following by a single one
      tag_name = tag_name.gsub(/_+/, '_')
      tag_name = tag_name.downcase

      tag_name
    end
  end
end
