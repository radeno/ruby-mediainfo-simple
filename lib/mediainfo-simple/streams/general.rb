module MediaInfo
  class GeneralStream < Stream
    TYPE = :general

    attr_reader :header_size
    attr_reader :data_size
    attr_reader :footer_size
    attr_reader :is_streamable

    private

    def header_size=(value)
      @header_size = value.to_i
    end

    def data_size=(value)
      @data_size = value.to_i
    end

    def footer_size=(value)
      @footer_size = value.to_i
    end
  end
end
