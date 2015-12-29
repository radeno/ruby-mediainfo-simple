module MediaInfo
  class Stream
    attr_reader :count
    attr_reader :status
    attr_reader :stream_count
    attr_reader :stream_kind
    attr_reader :stream_kind_string
    attr_reader :stream_kind_id
    attr_reader :stream_kind_pos
    attr_reader :stream_order
    attr_reader :first_packet_order
    attr_reader :inform
    attr_reader :id
    attr_reader :id_string
    attr_reader :unique_id
    attr_reader :unique_id_string

    attr_reader :complete_name
    attr_reader :folder_name
    attr_reader :file_name
    attr_reader :file_extension
    attr_reader :complete_name_last
    attr_reader :folder_name_last
    attr_reader :file_name_last
    attr_reader :file_extension_last

    attr_reader :format
    attr_reader :format_info
    attr_reader :format_url
    attr_reader :format_extensions
    attr_reader :format_commercial
    attr_reader :format_commercial_if_any
    attr_reader :format_version
    attr_reader :format_profile
    attr_reader :format_compression
    attr_reader :format_settings
    attr_reader :internet_media_type

    attr_reader :codec_id
    attr_reader :codec_id_string
    attr_reader :codec_id_info
    attr_reader :codec_id_hint
    attr_reader :codec_id_url
    attr_reader :codec_id_description

    attr_reader :file_size
    attr_reader :file_size_string
    attr_reader :file_size_string1
    attr_reader :file_size_string2
    attr_reader :file_size_string3
    attr_reader :file_size_string4

    attr_reader :file_created_date
    attr_reader :file_created_date_local
    attr_reader :file_modified_date
    attr_reader :file_modified_date_local

    attr_reader :stream_size
    attr_reader :stream_size_string
    attr_reader :stream_size_string1
    attr_reader :stream_size_string2
    attr_reader :stream_size_string3
    attr_reader :stream_size_string4
    attr_reader :stream_size_string5
    attr_reader :stream_size_proportion

    alias_method :stream_id, :id

    def initialize(params = {})
      klass = self.class

      params.each do |key, value|
        next unless klass.method_defined?("#{key}")

        if klass.private_method_defined?("#{key}=")
          self.send("#{key}=", value)
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

    def stream_size=(value)
      @stream_size = value.to_i
    end

    def stream_size_proportion=(value)
      @stream_size = value.to_f
    end
  end
end
