lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)
require 'active_blocks/version'

Gem::Specification.new do |s|
  s.name        = 'active_blocks'
  s.version     = ActiveBlocks::VERSION
  s.summary     = 'Manage decorators, form objects and operations.'
  s.description = 'ActiveBlocks is an implementation for manage decorators, form objects and operations.'
  s.author      = 'Kelvin Lemus'
  s.email       = 'kelvin932810@gmail.com'
  s.files       = Dir['{lib}/**/*', 'README.md']
  s.test_files  = Dir.glob(File.join('spec', '**', '*.rb'))
  s.homepage    = 'https://github.com/ikelvinlemus/active_blocks'
  s.license     = 'MIT'

  s.add_dependency 'activemodel', '>= 3.2', '< 5'
  s.add_dependency 'virtus'

end
