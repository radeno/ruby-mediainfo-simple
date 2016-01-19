require 'rexml/document'

module MediaInfo
  class MediaInfoParser
    attr_reader :mediainfo_path_verified

    def initialize(filename, mediainfo_object, mediainfo_path = nil)
      # we check that MediaInfo CLI is installed
      fail 'mediainfo command-line interface not installed' unless mediainfo_installed?(mediainfo_path)

      # we launch the MediaInfo scan
      # it will fill the MediaInfo object with the data
      mediainfo_run!(filename, mediainfo_object)
    end

    private

    # a method to check that MediaInfo CLI is installed
    # return true if installed, false otherwise
    def mediainfo_installed?(mediainfo_path = nil)
      # if the user specified the path, we check that MediaInfo
      # is installed at the path provided by the user
      # else, we get path with bash command `which`
      # (`which` works on Linux and Mac, but I don't know about Windows)
      mediainfo_path = %x(echo `which 'mediainfo'`).strip if mediainfo_path.nil?

      return false if mediainfo_path.blank? || !File.exist?(File.expand_path(mediainfo_path))

      @mediainfo_path_verified = mediainfo_path
      true
    end

    # we use the mediainfo command-line interface to get the XML results
    # it returns the raw XML data
    def mediainfo_run!(filename, mediainfo_object)
      command = "#{mediainfo_path_verified} '#{filename}' --Full --Language=raw --BOM --Output=XML"
      raw_xml_response = %x(echo `#{command} 2>&1`)

      raise RuntimeError, "Execution of `#{command}` failed: #{raw_xml_response.inspect}" unless $? == 0

      parse!(raw_xml_response, mediainfo_object)
    end

    # we parse the raw XML data (with ReXML),
    # and we fill the MediaInfo object attributes
    def parse!(raw_xml_response, mediainfo_object)
      # puts "#{raw_xml_response}"
      REXML::Document.new(raw_xml_response).elements.each('/Mediainfo/File/track') do |track|
        # we create a "Stream" object, depending on the Stream type

        params = {}
        # we get each tag about the stream
        track.children.select { |n| n.is_a? REXML::Element }.each do |c|
          tag_name = convert_element(c.name)
          params[tag_name.to_sym] = c.text.strip
        end

        stream = StreamFactory.create(track.attributes['type'], params)

        # we add the Stream objects to the MediaInfo object
        mediainfo_object.streams << stream
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
