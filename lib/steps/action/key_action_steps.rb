begin
  When(/^press "([^"]*)" (enter)$/) do |locator, arg|
    "
       Locator should be capybara default_selector
    "
    # E.g : And press "#login" enter
    find(locator, wait: BddHelper.timeout).native.send_keys(:return)
  end

  When(/^press "([^"]*)" (down)$/) do |locator, arg|
    "
       Locator should be capybara default_selector
    "
    # E.g : And press ".list-selector" down
    find(locator, wait: BddHelper.timeout).native.send_keys(:down)
  end

  When(/^press "([^"]*)" (up)$/) do |locator, arg|
    "
       Locator should be capybara default_selector
    "
    # E.g : And press ".list-selector" up
    find(locator, wait: BddHelper.timeout).native.send_keys(:up)
  end

  When(/^press "([^"]*)" (delete)$/) do |locator, arg|
    "
      Locator should be capybara default_selector
    "
    # E.g : And press "#username" delete
    find(locator, wait: BddHelper.timeout).native.clear
  end

  When(/^press "([^"]*)" (left)$/) do |locator, arg|
    "
      Locator should be capybara default_selector
    "
    # E.g : And press ".list-selector" left
    find(locator, wait: BddHelper.timeout).native.send_keys(:left)
  end

  When(/^press "([^"]*)" (right)$/) do |locator, arg|
    "
      Locator should be capybara default_selector
    "
    # E.g : And press ".list-selector" right
    find(locator, wait: BddHelper.timeout).native.send_keys(:right)
  end

  When(/^hover over "([^"]*)"$/) do |text|
    # E.g : And hover over "Account"
    find(:xpath, "//*[text()='#{text}']", wait: BddHelper.timeout).hover
  end

rescue StandardError => e
  puts e

end

