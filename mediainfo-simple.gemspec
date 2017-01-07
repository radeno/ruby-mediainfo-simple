require File.expand_path("../lib/mediainfo-simple/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'mediainfo-simple'
  s.version     = MediaInfo.version

  s.summary     = 'A simple meta information about files with MediaInfo.'
  s.authors     = ['Radovan Smitala', 'Vincent Marquet']
  s.license     = 'WTFPL'

  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'http://github.com/radeno/ruby-mediainfo-simple'

  s.requirements << 'mediainfo'
  s.required_ruby_version = '>= 2.0'
end
