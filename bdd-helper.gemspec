require 'rake'

Gem::Specification.new do |s|
  s.name        = 'bdd-helper'
  s.version     = '0.0.1'
  s.date        = '2017-08-22'
  s.summary     = "Helper step definitions for Gherkin"
  s.description = "Package of helper step defitions for BDD testing with Gherkin and Cucumber"
  s.authors     = ["Mehmet Ali Aydin"]
  s.email       = 'maaydin@gmail.com'
  s.files       = Dir['lib/**/*.*'].to_a
  s.homepage    = 'http://rubygems.org/gems/bdd-helper'
  s.license     = 'MIT'
end
