module MediaInfo
  class ImageStream < Stream
    attr_accessor :width
    attr_accessor :width_string
    attr_accessor :height
    attr_accessor :height_string

    attr_accessor :color_space
    attr_accessor :chroma_subsampling

    attr_accessor :bit_depth
    attr_accessor :bit_depth_string

    attr_accessor :compression_mode
    attr_accessor :compression_mode_string

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
