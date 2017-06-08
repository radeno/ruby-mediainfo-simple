module MediaInfo
  class Base
    attr_reader :streams

    def initialize(filename)
      check_file(filename)

      @streams = Parser.call(filename)
    end

    def streams_types
      streams.map do |stream|
        stream.class::TYPE
      end.uniq
    end

    def general?
      stream?(:general)
    end

    def video?
      stream?(:video)
    end

    def audio?
      stream?(:audio)
    end

    def text?
      stream?(:text)
    end

    def image?
      stream?(:image)
    end

    def menu?
      stream?(:menu)
    end

    def other?
      stream?(:other)
    end

    def general
      search_stream(:general)
    end

    def video
      search_stream(:video)
    end

    def audio
      search_stream(:audio)
    end

    def text
      search_stream(:text)
    end

    def image
      search_stream(:image)
    end

    def menu
      search_stream(:menu)
    end

    def other
      search_stream(:other)
    end

    private

    def stream?(type)
      streams.any? { |stream| stream.class::TYPE == type }
    end

    def search_stream(type)
      streams.select { |stream| stream.class::TYPE == type }
    end

    def check_file(file_path)
      raise ArgumentError, "#{file_path} does not exist or is not local file" unless File.exist?(file_path)
    end
  end
end
