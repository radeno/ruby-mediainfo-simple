module MediaInfo
  module Version
    MAJOR = 0
    MINOR = 1
    TINY  = 2
    PRE   = nil

    NUMBER = [MAJOR, MINOR, TINY, PRE].compact.join('.')
  end
end
