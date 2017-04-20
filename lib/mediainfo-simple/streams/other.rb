require 'mediainfo-simple/stream'

module MediaInfo
  class OtherStream < Stream
    TYPE = :other

    attr_reader :type
  end
end
