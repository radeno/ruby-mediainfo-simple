require 'rexml/document'

module MediaInfo
  class Parser
    def self.call(file_path)
      new.parse(file_path)
    end

    attr_reader :file_path

    def initialize
      # we check that MediaInfo CLI is installed
      unless mediainfo_available?
        raise StandardError, 'mediainfo command-line interface not installed'
      end
    end

    def parse(file_path)
      @file_path = file_path
      raw_xml_response = execute_command

      unless $?.success?
        raise "Execution of `#{command}` failed: #{raw_xml_response.inspect}"
      end

      parse_response(raw_xml_response)
    end

    private

    def command
      "#{mediainfo_path} '#{file_path.force_encoding(Encoding::UTF_8)}' --Full --Language=raw --BOM --Output=XML"
    end

    def execute_command
      %x(echo `#{command} 2>&1`)
    end

    def mediainfo_path
      %x(echo `which 'mediainfo'`).strip
    end

    def mediainfo_available?
      !mediainfo_path.empty? && File.exist?(File.expand_path(mediainfo_path))
    end

    def parse_response(raw_xml_response)
      REXML::Document.new(raw_xml_response).elements.to_a('/Mediainfo/File/track').map do |track|
        selected_elements = track.children.select { |n| n.is_a? REXML::Element }

        elements = selected_elements.each_with_object({}) do |element, memo|
          tag_name = convert_element(element.name).to_sym
          memo[tag_name] = element.text.strip
        end.to_h

        StreamFactory.create(track.attributes['type'], elements)
      end
    end

    def convert_element(tag_name)
      # we convert the tag name to a ruby-attribute-compatible name
      tag_name = tag_name.strip # remove whitespaces at the beginning and the end
      # we replace characters forbidden in Ruby method names by '_':
      tag_name = tag_name.gsub(/[\(\)\{\}\[\]\*\/\\,;\.:\+=\-\^\$\!\?\|@#\&"'`]+/, '_')
      tag_name = tag_name.gsub(/(.)([A-Z])/, '\1_\2') # add underscore between capital case
      tag_name = tag_name.gsub(/_+/, '_') # we replace several '_' following by a single one
      tag_name = tag_name.downcase

      tag_name
    end
  end
end
