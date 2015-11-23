module MediaInfo
  class GeneralStream < Stream
    attr_accessor :general_count
    attr_accessor :video_count
    attr_accessor :audio_count
    attr_accessor :text_count
    attr_accessor :other_count
    attr_accessor :image_count
    attr_accessor :menu_count

    attr_accessor :header_size
    attr_accessor :data_size
    attr_accessor :footer_size
    attr_accessor :is_streamable

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
