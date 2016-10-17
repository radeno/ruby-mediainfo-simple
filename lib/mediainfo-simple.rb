require 'mediainfo-simple/parser'
require 'mediainfo-simple/stream_factory'
require 'mediainfo-simple/stream'
require 'mediainfo-simple/streams/audio'
require 'mediainfo-simple/streams/video'
require 'mediainfo-simple/streams/text'
require 'mediainfo-simple/streams/image'
require 'mediainfo-simple/streams/general'
require 'mediainfo-simple/streams/menu'
require 'mediainfo-simple/streams/other'

module MediaInfo
  class Base
    attr_reader :streams

    def initialize(filename)
      checkfile(filename)

      @streams = Parser.new.call(filename)
    end

    def streams_types
      streams.map do |stream|
        stream.class::TYPE
      end.uniq
    end

    def general?
      streams.any? { |stream| stream.is_a? GeneralStream }
    end

    def video?
      streams.any? { |stream| stream.is_a? VideoStream }
    end

    def audio?
      streams.any? { |stream| stream.is_a? AudioStream }
    end

    def text?
      streams.any? { |stream| stream.is_a? TextStream }
    end

    def image?
      streams.any? { |stream| stream.is_a? ImageStream }
    end

    def menu?
      streams.any? { |stream| stream.is_a? MenuStream }
    end

    def other?
      streams.any? { |stream| stream.is_a? OtherStream }
    end

    def general
      streams.select { |stream| stream.is_a? GeneralStream }
    end

    def video
      streams.select { |stream| stream.is_a? VideoStream }
    end

    def audio
      streams.select { |stream| stream.is_a? AudioStream }
    end

    def text
      streams.select { |stream| stream.is_a? TextStream }
    end

    def image
      streams.select { |stream| stream.is_a? ImageStream }
    end

    def menu
      streams.select { |stream| stream.is_a? MenuStream }
    end

    def other
      streams.select { |stream| stream.is_a? OtherStream }
    end

    private

    def checkfile(filename)
      raise ArgumentError, "#{filename} does not exist" unless File.exist? filename
    end
  end
end
