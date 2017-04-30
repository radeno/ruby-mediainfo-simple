# Separate to Streams and Attributes defined in
# https://github.com/MediaArea/MediaInfoLib/blob/master/Source/MediaInfo/File__Analyse_Automatic.h

require 'time'

module MediaInfo
  class Stream
    attr_reader :count,
                :status,
                :stream_count,
                :stream_kind,
                :stream_kind_string,
                :stream_kind_id,
                :stream_kind_pos,
                :stream_order,
                :first_packet_order,
                :inform,
                :id,
                :id_string,
                :unique_id,
                :unique_id_string,
                :format,
                :format_info,
                :format_url,
                :format_extensions,
                :format_commercial,
                :format_commercial_if_any,
                :format_version,
                :format_profile,
                :format_compression,
                :format_settings,
                :internet_media_type,
                :codec,
                :codec_string,
                :codec_extensions,
                :codec_id,
                :codec_id_string,
                :codec_id_info,
                :codec_id_hint,
                :codec_id_url,
                :codec_id_description,
                :stream_size,
                :stream_size_string,
                :stream_size_string1,
                :stream_size_string2,
                :stream_size_string3,
                :stream_size_string4,
                :stream_size_string5,
                :stream_size_proportion,
                :others

    alias stream_id id

    def initialize(params = {})
      @others = {}

      params.each do |key, value|
        unless respond_to?(key)
          @others.merge!(Hash[key, value])
          next
        end

        if respond_to?("#{key}=", true)
          send("#{key}=", value)
        else
          instance_variable_set("@#{key}", value)
        end
      end
    end

    private

    def count=(value)
      @count = value.to_i
    end

    def stream_count=(value)
      @stream_count = value.to_i
    end

    def stream_kind_id=(value)
      @stream_kind_id = value.to_i
    end

    def first_packet_order=(value)
      @first_packet_order = value.to_i
    end

    def format_extensions=(value)
      @format_extensions = value.split(split_delimiter)
    end

    def codec_extensions=(value)
      @codec_extensions = value.split(split_delimiter)
    end

    def stream_size=(value)
      @stream_size = value.to_i
    end

    def stream_size_proportion=(value)
      @stream_size_proportion = value.to_f
    end

    def split_delimiter
      /[\s,']/
    end
  end
end
