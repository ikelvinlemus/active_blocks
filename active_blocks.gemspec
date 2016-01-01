
Gem::Specification.new do |s|
  s.name        = 'active_blocks'
  s.version     = '0.0.1'
  s.summary     = 'manage business logic'
  s.description = 'ActiveBlocks is an implementation for manage business logic'
  s.author      = 'Kelvin Lemus'
  s.email       = 'kelvin932810@gmail.com'
  s.files       = Dir['{lib}/**/*', 'README.md']
  s.homepage    = 'https://github.com/ikelvinlemus/active_blocks'
  s.license     = 'MIT'

  s.add_dependency 'activemodel', '>= 3.2', '< 5'

end
