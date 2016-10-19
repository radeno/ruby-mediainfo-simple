Gem::Specification.new do |s|
  s.name        = 'mediainfo-simple'
  s.version     = '0.1.0'
  s.date        = '2016-10-17'
  s.summary     = 'A simple meta information about files with MediaInfo.'
  s.authors     = ['Radovan Smitala', 'Vincent Marquet']
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'http://github.com/radeno/ruby-mediainfo-simple'
  s.license     = 'WTFPL'

  s.requirements << 'mediainfo'
  s.required_ruby_version = '>= 2.0'
end
