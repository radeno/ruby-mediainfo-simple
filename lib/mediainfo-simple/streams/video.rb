module MediaInfo
  class VideoStream < Stream
    attr_accessor :duration
    attr_accessor :duration_string
    attr_accessor :duration_string1
    attr_accessor :duration_string2
    attr_accessor :duration_string3
    attr_accessor :duration_string4
    attr_accessor :duration_string5

    attr_accessor :bit_rate
    attr_accessor :bit_rate_string
    attr_accessor :bit_rate_mode
    attr_accessor :bit_rate_mode_string
    attr_accessor :bit_rate_minimum
    attr_accessor :bit_rate_minimum_string
    attr_accessor :bit_rate_nominal
    attr_accessor :bit_rate_nominal_string
    attr_accessor :bit_rate_maximum
    attr_accessor :bit_rate_maximum_string
    attr_accessor :bit_rate_encoded
    attr_accessor :bit_rate_encoded_string

    attr_accessor :width
    attr_accessor :width_string
    attr_accessor :height
    attr_accessor :height_string

    attr_accessor :pixel_aspect_ratio
    attr_accessor :pixel_aspect_ratio_string
    attr_accessor :display_aspect_ratio
    attr_accessor :display_aspect_ratio_string

    attr_accessor :rotation
    attr_accessor :rotation_string

    attr_accessor :frame_rate_mode
    attr_accessor :frame_rate_mode_string
    attr_accessor :frame_rate
    attr_accessor :frame_rate_string
    attr_accessor :frame_rate_minimum
    attr_accessor :frame_rate_minimum_string
    attr_accessor :frame_rate_nominal
    attr_accessor :frame_rate_nominal_string
    attr_accessor :frame_rate_maximum
    attr_accessor :frame_rate_maximum_string
    attr_accessor :frame_count

    attr_accessor :standard

    attr_accessor :color_space
    attr_accessor :colorimetry
    attr_accessor :chroma_subsampling

    attr_accessor :bit_depth
    attr_accessor :bit_depth_string

    attr_accessor :scan_type
    attr_accessor :scan_type_string
    attr_accessor :scan_order
    attr_accessor :scan_order_string

    attr_accessor :compression_mode
    attr_accessor :compression_mode_string
    attr_accessor :compression_ratio

    attr_accessor :bits__pixel_frame # "Bits-(Pixel*Frame)"
    attr_accessor_alias :bits_pixel_frame, :bits__pixel_frame

    attr_accessor :format_settings_bvop
    attr_accessor :format_settings_bvop_string
    attr_accessor :format_settings_qpel
    attr_accessor :format_settings_qpel_string
    attr_accessor :format_settings_gmc
    attr_accessor :format_settings_gmc_string
    attr_accessor :format_settings_matrix
    attr_accessor :format_settings_matrix_string
    attr_accessor :format_settings_cabac
    attr_accessor :format_settings_cabac_string
    attr_accessor :format_settings_ref_frames
    attr_accessor :format_settings_ref_frames_string
    attr_accessor :format_settings_pulldown
    attr_accessor :format_settings_pulldown_string
    attr_accessor :format_settings_frame_mode
    attr_accessor :format_settings_frame_mode_string
    attr_accessor :format_settings_gop
    attr_accessor :format_settings_gop_string
    attr_accessor :format_settings_wrapping

    attr_accessor :language
    attr_accessor :language_string
    attr_accessor :language_string1
    attr_accessor :language_string2
    attr_accessor :language_string3
    attr_accessor :language_string4
    attr_accessor :language_more

    attr_accessor :encoded_date
    attr_accessor :tagged_date

    # convert from miliseconds to seconds
    def duration=(value)
      @duration = value.to_i / 1000.0
    end

    def bit_rate=(value)
      @bit_rate = value.to_i
    end

    def bit_rate_minimum=(value)
      @bit_rate_minimum = value.to_i
    end

    def bit_rate_nominal=(value)
      @bit_rate_nominal = value.to_i
    end

    def bit_rate_maximum=(value)
      @bit_rate_maximum = value.to_i
    end

    def width=(value)
      @width = value.to_i
    end

    def height=(value)
      @height = value.to_i
    end

    def frame_rate=(value)
      @frame_rate = value.to_i
    end

    def frame_rate_minimum=(value)
      @frame_rate_minimum = value.to_i
    end

    def frame_rate_nominal=(value)
      @frame_rate_nominal = value.to_i
    end

    def frame_rate_maximum=(value)
      @frame_rate_maximum = value.to_i
    end

    def bit_depth=(value)
      @bit_depth = value.to_i
    end

    def encoded_date=(value)
      @encoded_date = Time.parse(value)
    end

    def tagged_date=(value)
      @encoded_date = Time.parse(value)
    end
  end
end
