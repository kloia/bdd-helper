require 'rake'

Gem::Specification.new do |s|
  s.name        = 'bdd-helper'
  s.version     = '0.0.3'
  s.date        = '2017-09-17'
  s.summary     = "Helper step definitions for Gherkin"
  s.description = "Package of helper step definitions for BDD testing with Gherkin and Cucumber"
  s.authors     = ["kloia"]
  s.email       = 'maaydin@gmail.com'
  s.files       = Dir['lib/**/*.*'].to_a
  s.homepage    = 'http://rubygems.org/gems/bdd-helper'
  s.license     = 'MIT'
  s.add_runtime_dependency 'capybara',  '~> 3.36'
  s.add_runtime_dependency 'cucumber', '~> 7.1'
  s.add_runtime_dependency 'rspec', '~> 3.10'
  s.add_runtime_dependency 'selenium-webdriver', '~> 4.0', '>= 4.0.3'
  s.add_runtime_dependency 'faker', '~> 2.19'
end