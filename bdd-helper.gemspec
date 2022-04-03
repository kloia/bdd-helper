require 'rake'

Gem::Specification.new do |s|
  s.name        = 'bdd-helper'
  s.version     = '1.0.2'
  s.date        = '2022-04-03'
  s.summary     = "Helper steps for client-based automation testing"
  s.description = "Package of helper steps for BDD testing with Cucumber"
  s.authors     = ["kloia"]
  s.email       = 'burak@kloia.com'
  s.files       = Dir['lib/**/*.*'].to_a
  s.homepage    = 'https://github.com/kloia/bdd-helper'
  s.metadata = {
    'source_code_uri' => 'https://github.com/kloia/bdd-helper',
    'changelog_uri' => 'https://github.com/kloia/bdd-helper/blob/master/CHANGELOG.md'
  }
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.6.0'
  s.add_runtime_dependency 'capybara',  '~> 3.36'
  s.add_runtime_dependency 'cucumber', '~> 7.1'
  s.add_runtime_dependency 'rspec', '~> 3.10'
  s.add_runtime_dependency 'selenium-webdriver', '~> 4.0', '>= 4.0.3'
  s.add_runtime_dependency 'faker', '~> 2.19'

end