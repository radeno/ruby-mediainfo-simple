module MediaInfo
  module StreamFactory
    def self.create(stream_type, params)
      raise ArgumentError, "need a stream_type, received #{stream_type.inspect}" if stream_type.nil?

      # we check that there is a subclass of stream for this stream
      stream_class_name = "MediaInfo::#{stream_type}Stream"
      raise "bad stream type: #{stream_type.inspect}" unless Object.const_defined?(stream_class_name)

      Object.const_get(stream_class_name).new(params)
    end
  end
end
