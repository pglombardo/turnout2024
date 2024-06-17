lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'turnout/version'

spec = Gem::Specification.new do |s|
  s.name = 'turnout'
  s.version = Turnout::VERSION
  s.summary = 'A Rack based maintenance mode plugin for Rails'
  s.description = 'Turnout makes it easy to put your Rails application into maintenance mode'
  s.files = Dir['README.*', 'MIT-LICENSE', 'rails/*.rb', 'config/**/*.rb', 'lib/**/*.rb', 'lib/tasks/*.rake', 'public/*']
  s.require_path = 'lib'
  s.author = 'Adam Crownoble, Peter Giacomo Lombardo'
  s.email = 'pglombardo@hey.com'
  s.homepage = 'https://github.com/pglombardo/turnout2024'
  s.license = 'MIT'
  s.add_dependency('tilt','>= 2.3', '< 3')
  s.add_dependency('rack', '>= 3', '< 4')
  s.add_dependency('rack-accept', '~> 0.4.5')
  s.add_dependency('i18n', '>= 0.7', '< 2')
  s.add_development_dependency('rack-test', '~> 0.6')
  s.add_development_dependency('rspec', '~> 3.0')
  s.add_development_dependency('rspec-its', '~> 1.0')

  s.add_development_dependency('simplecov', '~> 0.10', '>= 0.10')
  s.add_development_dependency('simplecov-summary', '~> 0.0.4', '>= 0.0.4')
end
