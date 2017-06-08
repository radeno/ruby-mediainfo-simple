require 'media_info/parser'
require 'media_info/base'

module MediaInfo
  def self.parse(file_path)
    Base.new(file_path)
  end
end
