module MediaInfo
  class AudioStream < Stream
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

    attr_accessor :channel_s_
    attr_accessor :channel_s__string
    attr_accessor :channel_positions
    attr_accessor :channel_positions_string2
    attr_accessor :channel_layout
    attr_accessor :channel_layout_id
    attr_accessor_alias :channels, :channel_s_
    attr_accessor_alias :channels_string, :channel_s__string

    attr_accessor :sampling_rate
    attr_accessor :sampling_rate_string
    attr_accessor :frame_count

    attr_accessor :compression_mode
    attr_accessor :compression_mode_string

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

    def sampling_rate=(value)
      @sampling_rate = value.to_i
    end

    def frame_count=(value)
      @frame_count = value.to_i
    end

    def encoded_date=(value)
      @encoded_date = Time.parse(value)
    end

    def tagged_date=(value)
      @encoded_date = Time.parse(value)
    end
  end
end
