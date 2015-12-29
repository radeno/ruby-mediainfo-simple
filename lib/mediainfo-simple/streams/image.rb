module MediaInfo
  class ImageStream < Stream
    attr_reader :width
    attr_reader :width_string
    attr_reader :height
    attr_reader :height_string

    attr_reader :color_space
    attr_reader :chroma_subsampling

    attr_reader :bit_depth
    attr_reader :bit_depth_string

    attr_reader :compression_mode
    attr_reader :compression_mode_string

    private

    def width=(value)
      @width = value.to_i
    end

    def height=(value)
      @height = value.to_i
    end

    def bit_depth=(value)
      @bit_depth = value.to_i
    end
  end
end
