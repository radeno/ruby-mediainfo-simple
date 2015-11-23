module MediaInfo
  class MenuStream < Stream
    attr_accessor :menu_id
    attr_accessor :menu_id_string

    attr_accessor :duration
    attr_accessor :duration_string
    attr_accessor :duration_string1
    attr_accessor :duration_string2
    attr_accessor :duration_string3
    attr_accessor :duration_string4
    attr_accessor :duration_string5
    attr_accessor :duration_start
    attr_accessor :duration_end

    attr_accessor :delay
    attr_accessor :delay_string
    attr_accessor :delay_string1
    attr_accessor :delay_string2
    attr_accessor :delay_string3
    attr_accessor :delay_string4
    attr_accessor :delay_string5
    attr_accessor :delay_settings
    attr_accessor :delay_drop_frame

    attr_accessor :language
    attr_accessor :language_string
    attr_accessor :language_string1
    attr_accessor :language_string2
    attr_accessor :language_string3
    attr_accessor :language_string4
    attr_accessor :language_more

    # convert from miliseconds to seconds
    def menu_id=(value)
      @menu_id = value.to_i
    end

    # convert from miliseconds to seconds
    def duration=(value)
      @duration = value.to_i / 1000.0
    end

    # convert from miliseconds to seconds
    def delay=(value)
      @delay = value.to_i / 1000.0
    end
  end
end
