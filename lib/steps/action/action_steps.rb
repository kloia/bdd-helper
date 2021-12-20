# frozen_string_literal: true

begin

  When(/^press "([^"]*)" (enter)$/) do |locator, arg|
    find(locator).native.send_keys(:return)
  end

  When(/^press "([^"]*)" (down)$/) do |locator, arg|
    find(locator).native.send_keys(:down)
  end

  When(/^press "([^"]*)" (up)$/) do |locator, arg|
    find(locator).native.send_keys(:up)
  end

  When(/^press "([^"]*)" (delete)$/) do |locator, arg|
    find(locator).native.clear
  end

  When(/^press "([^"]*)" (left)$/) do |locator, arg|
    find(locator).native.send_keys(:left)
  end

  When(/^press "([^"]*)" (right)$/) do |locator, arg|
    find(locator).native.send_keys(:right)
  end


  When(/^hover over "([^"]*)"$/) do |text|
    find(xpath: "//*[text()='#{text}']").hover
  end

rescue StandardError => e
  puts e

end

