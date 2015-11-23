module MediaInfo
  class Stream
    # to create aliases (getter and setter method)
    # for attributes defined with attr_accessor
    def self.attr_accessor_alias(alias_name, alias_target)
      alias_method alias_name, alias_target
      alias_method "#{alias_name}=".to_sym, "#{alias_target}=".to_sym
    end

    attr_accessor :count
    attr_accessor :status
    attr_accessor :stream_count
    attr_accessor :stream_kind
    attr_accessor :stream_kind_string
    attr_accessor :stream_kind_id
    attr_accessor :stream_kind_pos
    attr_accessor :stream_order
    attr_accessor :first_packet_order
    attr_accessor :inform
    attr_accessor :id
    attr_accessor :id_string
    attr_accessor :unique_id
    attr_accessor :unique_id_string

    attr_accessor :complete_name
    attr_accessor :folder_name
    attr_accessor :file_name
    attr_accessor :file_extension
    attr_accessor :complete_name_last
    attr_accessor :folder_name_last
    attr_accessor :file_name_last
    attr_accessor :file_extension_last

    attr_accessor :format
    attr_accessor :format_info
    attr_accessor :format_url
    attr_accessor :format_extensions
    attr_accessor :format_commercial
    attr_accessor :format_commercial_if_any
    attr_accessor :format_version
    attr_accessor :format_profile
    attr_accessor :format_compression
    attr_accessor :format_settings
    attr_accessor :internet_media_type

    attr_accessor :codec_id
    attr_accessor :codec_id_string
    attr_accessor :codec_id_info
    attr_accessor :codec_id_hint
    attr_accessor :codec_id_url
    attr_accessor :codec_id_description

    attr_accessor :file_size
    attr_accessor :file_size_string
    attr_accessor :file_size_string1
    attr_accessor :file_size_string2
    attr_accessor :file_size_string3
    attr_accessor :file_size_string4

    attr_accessor :file_created_date
    attr_accessor :file_created_date_local
    attr_accessor :file_modified_date
    attr_accessor :file_modified_date_local

    attr_accessor :stream_size
    attr_accessor :stream_size_string
    attr_accessor :stream_size_string1
    attr_accessor :stream_size_string2
    attr_accessor :stream_size_string3
    attr_accessor :stream_size_string4
    attr_accessor :stream_size_string5
    attr_accessor :stream_size_proportion

    attr_accessor_alias :stream_id, :id

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
  end
end
