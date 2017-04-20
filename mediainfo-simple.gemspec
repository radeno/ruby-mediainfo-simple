require File.expand_path('../lib/mediainfo-simple/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'mediainfo-simple'
  s.version     = Gem::Version.new(MediaInfo::Version::NUMBER)

  s.summary     = 'A simple meta information about files with MediaInfo.'
  s.authors     = ['Radovan Smitala', 'Vincent Marquet']
  s.homepage    = 'http://github.com/radeno/ruby-mediainfo-simple'
  s.license     = 'WTFPL'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']

  s.requirements << 'mediainfo'
  s.required_ruby_version = '>= 2.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'

  s.add_development_dependency 'reek'
  s.add_development_dependency 'rubocop'
end
