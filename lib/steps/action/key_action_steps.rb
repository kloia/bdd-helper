begin
  When(/^press "([^"]*)" (enter)$/) do |locator, arg|
    # E.g : press "#login" enter
    # E.g : find('#login', wait: BddHelper.timeout).native.send_keys(:return) ===>> to press enter keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.send_keys(:return)
  end

  When(/^press "([^"]*)" (down)$/) do |locator, arg|
    # E.g : press ".list-selector" down
    # E.g : find('.list-selector', wait: BddHelper.timeout).native.send_keys(:down)) ===>> to press down keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.send_keys(:down)
  end

  When(/^press "([^"]*)" (up)$/) do |locator, arg|
    # E.g : press ".list-selector" up
    # E.g : find('.list-selector', wait: BddHelper.timeout).native.send_keys(:up)) ===>> to press up keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.send_keys(:up)
  end

  When(/^press "([^"]*)" (delete)$/) do |locator, arg|
    # E.g : press "#username" delete
    # E.g : find('#username', wait: BddHelper.timeout).native.clear ===>> to press delete keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.clear
  end

  When(/^press "([^"]*)" (left)$/) do |locator, arg|
    # E.g : press ".list-selector" left
    # E.g : find('.list-selector', wait: BddHelper.timeout).native.send_keys(:left) ===>> to press left keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.send_keys(:left)
  end

  When(/^press "([^"]*)" (right)$/) do |locator, arg|
    # E.g : press ".list-selector" right
    # E.g : find('.list-selector', wait: BddHelper.timeout).native.send_keys(:right) ===>> to press right keystroke
    # locator should be capybara default_selector
    find(locator, wait: BddHelper.timeout).native.send_keys(:right)
  end

  When(/^hover over "([^"]*)"$/) do |text|
    # E.g : hover over "Menu"
    # E.g : find  xpath: "//*[text()='Menu']", wait: BddHelper.timeout ===>> to hover text matched
    # can be text
    find(:xpath, "//*[text()='#{text}']", wait: BddHelper.timeout).hover
  end

rescue StandardError => e
  puts e

end

