module MediaInfo
  class AudioStream < Stream
    TYPE = :audio

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

    attr_reader :channel_s
    attr_reader :channel_s_string
    attr_reader :channel_positions
    attr_reader :channel_positions_string2
    attr_reader :channel_layout
    attr_reader :channel_layout_id
    alias_method :channels, :channel_s
    alias_method :channels_string, :channel_s_string

    attr_reader :sampling_rate
    attr_reader :sampling_rate_string
    attr_reader :frame_count

    attr_reader :compression_mode
    attr_reader :compression_mode_string

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

    def channel_s=(value)
      @channel_s = value.to_i
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
