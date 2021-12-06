require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'rspec/matchers'
require 'selenium/webdriver'
require 'selenium/webdriver/common/wait'
require 'faker'

Dir["#{Dir.pwd}/lib/steps/**/*.rb"].each { |file| require file }
