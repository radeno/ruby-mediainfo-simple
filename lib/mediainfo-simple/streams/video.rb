module MediaInfo
  class VideoStream < Stream
    TYPE = :video

    attr_reader :duration
    attr_reader :duration_string
    attr_reader :duration_string1
    attr_reader :duration_string2
    attr_reader :duration_string3
    attr_reader :duration_string4
    attr_reader :duration_string5

    attr_reader :bit_rate
    attr_reader :bit_rate_string
    attr_reader :bit_rate_mode
    attr_reader :bit_rate_mode_string
    attr_reader :bit_rate_minimum
    attr_reader :bit_rate_minimum_string
    attr_reader :bit_rate_nominal
    attr_reader :bit_rate_nominal_string
    attr_reader :bit_rate_maximum
    attr_reader :bit_rate_maximum_string
    attr_reader :bit_rate_encoded
    attr_reader :bit_rate_encoded_string

    attr_reader :width
    attr_reader :width_string
    attr_reader :height
    attr_reader :height_string

    attr_reader :pixel_aspect_ratio
    attr_reader :pixel_aspect_ratio_string
    attr_reader :display_aspect_ratio
    attr_reader :display_aspect_ratio_string

    attr_reader :rotation
    attr_reader :rotation_string

    attr_reader :frame_rate_mode
    attr_reader :frame_rate_mode_string
    attr_reader :frame_rate
    attr_reader :frame_rate_string
    attr_reader :frame_rate_minimum
    attr_reader :frame_rate_minimum_string
    attr_reader :frame_rate_nominal
    attr_reader :frame_rate_nominal_string
    attr_reader :frame_rate_maximum
    attr_reader :frame_rate_maximum_string
    attr_reader :frame_count

    attr_reader :standard

    attr_reader :color_space
    attr_reader :colorimetry
    attr_reader :chroma_subsampling

    attr_reader :bit_depth
    attr_reader :bit_depth_string

    attr_reader :scan_type
    attr_reader :scan_type_string
    attr_reader :scan_order
    attr_reader :scan_order_string

    attr_reader :compression_mode
    attr_reader :compression_mode_string
    attr_reader :compression_ratio

    attr_reader :bits_pixel_frame # "Bits-(Pixel*Frame)"

    attr_reader :format_settings_bvop
    attr_reader :format_settings_bvop_string
    attr_reader :format_settings_qpel
    attr_reader :format_settings_qpel_string
    attr_reader :format_settings_gmc
    attr_reader :format_settings_gmc_string
    attr_reader :format_settings_matrix
    attr_reader :format_settings_matrix_string
    attr_reader :format_settings_cabac
    attr_reader :format_settings_cabac_string
    attr_reader :format_settings_ref_frames
    attr_reader :format_settings_ref_frames_string
    attr_reader :format_settings_pulldown
    attr_reader :format_settings_pulldown_string
    attr_reader :format_settings_frame_mode
    attr_reader :format_settings_frame_mode_string
    attr_reader :format_settings_gop
    attr_reader :format_settings_gop_string
    attr_reader :format_settings_wrapping

    attr_reader :language
    attr_reader :language_string
    attr_reader :language_string1
    attr_reader :language_string2
    attr_reader :language_string3
    attr_reader :language_string4
    attr_reader :language_more

    attr_reader :encoded_date
    attr_reader :tagged_date

    private

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
