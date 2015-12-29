module MediaInfo
  class GeneralStream < Stream
    attr_reader :general_count
    attr_reader :video_count
    attr_reader :audio_count
    attr_reader :text_count
    attr_reader :other_count
    attr_reader :image_count
    attr_reader :menu_count

    attr_reader :header_size
    attr_reader :data_size
    attr_reader :footer_size
    attr_reader :is_streamable

    private

    def general_count=(value)
      @general_count = value.to_i
    end

    def video_count=(value)
      @video_count = value.to_i
    end

    def audio_count=(value)
      @audio_count = value.to_i
    end

    def text_count=(value)
      @text_count = value.to_i
    end

    def other_count=(value)
      @other_count = value.to_i
    end

    def image_count=(value)
      @image_count = value.to_i
    end

    def menu_count=(value)
      @menu_count = value.to_i
    end

    def header_size=(value)
      @header_size = value.to_i
    end

    def data_size=(value)
      @data_size = value.to_i
    end

    def footer_size=(value)
      @footer_size = value.to_i
    end
  end
end
