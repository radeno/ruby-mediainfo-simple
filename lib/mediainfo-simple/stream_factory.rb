require 'mediainfo-simple/streams/audio'
require 'mediainfo-simple/streams/video'
require 'mediainfo-simple/streams/text'
require 'mediainfo-simple/streams/image'
require 'mediainfo-simple/streams/general'
require 'mediainfo-simple/streams/menu'
require 'mediainfo-simple/streams/other'

module MediaInfo
  module StreamFactory
    def self.create(stream_type, params)
      raise ArgumentError, "Need a stream_type, received #{stream_type.inspect}" if stream_type.nil?

      # we check that there is a subclass of stream for this stream
      stream_class_name = "MediaInfo::#{stream_type}Stream"
      raise "Bad stream type: #{stream_type.inspect}" unless Object.const_defined?(stream_class_name)

      Object.const_get(stream_class_name).new(params)
    end
  end
end
