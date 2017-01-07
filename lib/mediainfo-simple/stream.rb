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
                :complete_name,
                :folder_name,
                :file_name,
                :file_extension,
                :complete_name_last,
                :folder_name_last,
                :file_name_last,
                :file_extension_last,
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
                :file_size,
                :file_size_string,
                :file_size_string1,
                :file_size_string2,
                :file_size_string3,
                :file_size_string4,
                :file_created_date,
                :file_created_date_local,
                :file_modified_date,
                :file_modified_date_local,
                :stream_size,
                :stream_size_string,
                :stream_size_string1,
                :stream_size_string2,
                :stream_size_string3,
                :stream_size_string4,
                :stream_size_string5,
                :stream_size_proportion
    attr_reader :others

    alias stream_id id

    def initialize(params = {})
      klass = self.class
      @others = {}

      params.each do |key, value|
        unless klass.method_defined?(key)
          @others.merge!(Hash[key, value])
          next
        end

        if klass.private_method_defined?("#{key}=")
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

    def file_size=(value)
      @file_size = value.to_i
    end

    def format_extensions=(value)
      @format_extensions = value.split(" ")
    end

    def codec_extensions=(value)
      @codec_extensions = value.split(" ")
    end

    def stream_size=(value)
      @stream_size = value.to_i
    end

    def stream_size_proportion=(value)
      @stream_size_proportion = value.to_f
    end
  end
end
