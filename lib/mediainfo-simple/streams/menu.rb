require 'mediainfo-simple/stream'

module MediaInfo
  class MenuStream < Stream
    TYPE = :menu

    attr_reader :menu_id,
                :menu_id_string,
                :duration,
                :duration_string,
                :duration_string1,
                :duration_string2,
                :duration_string3,
                :duration_string4,
                :duration_string5,
                :duration_start,
                :duration_end,
                :delay,
                :delay_string,
                :delay_string1,
                :delay_string2,
                :delay_string3,
                :delay_string4,
                :delay_string5,
                :delay_settings,
                :delay_drop_frame,
                :language,
                :language_string,
                :language_string1,
                :language_string2,
                :language_string3,
                :language_string4,
                :language_more

    def duration_seconds
      duration / 1000.0
    end

    def delay_seconds
      delay / 1000.0
    end

    private

    def menu_id=(value)
      @menu_id = value.to_i
    end

    def duration=(value)
      @duration = value.to_i
    end

    def delay=(value)
      @delay = value.to_i
    end
  end
end
