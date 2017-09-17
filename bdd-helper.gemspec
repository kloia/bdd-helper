require 'rake'

Gem::Specification.new do |s|
  s.name        = 'bdd-helper'
  s.version     = '0.0.3'
  s.date        = '2017-09-17'
  s.summary     = "Helper step definitions for Gherkin"
  s.description = "Package of helper step definitions for BDD testing with Gherkin and Cucumber"
  s.authors     = ["Mehmet Ali Aydin"]
  s.email       = 'maaydin@gmail.com'
  s.files       = Dir['lib/**/*.*'].to_a
  s.homepage    = 'http://rubygems.org/gems/bdd-helper'
  s.license     = 'MIT'
  s.add_runtime_dependency 'capybara', '~> 2.11', '>= 2.11.0'
  s.add_runtime_dependency 'cucumber', '~> 2.4', '>= 2.4.0'
  s.add_runtime_dependency 'rspec', '~> 3.5', '>= 3.5.0'
  s.add_runtime_dependency 'selenium-webdriver', '3.4.0'
end