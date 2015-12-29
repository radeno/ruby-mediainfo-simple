module MediaInfo
  class MenuStream < Stream
    TYPE = :menu

    attr_reader :menu_id
    attr_reader :menu_id_string

    attr_reader :duration
    attr_reader :duration_string
    attr_reader :duration_string1
    attr_reader :duration_string2
    attr_reader :duration_string3
    attr_reader :duration_string4
    attr_reader :duration_string5
    attr_reader :duration_start
    attr_reader :duration_end

    attr_reader :delay
    attr_reader :delay_string
    attr_reader :delay_string1
    attr_reader :delay_string2
    attr_reader :delay_string3
    attr_reader :delay_string4
    attr_reader :delay_string5
    attr_reader :delay_settings
    attr_reader :delay_drop_frame

    attr_reader :language
    attr_reader :language_string
    attr_reader :language_string1
    attr_reader :language_string2
    attr_reader :language_string3
    attr_reader :language_string4
    attr_reader :language_more

    private

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
