begin
  When(/^click "([^"]*)" button$/) do |button_id_title_or_text|
    "
      Button can be name, id, value or title
    "
    # E.g : And click "Sign In" button
    click_button(button_id_title_or_text, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" link$/) do |link_id_title_or_text|
    "
      Link can be id, text or title
    "
    # E.g : And click "Contact Us" link
    click_link(link_id_title_or_text, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" (css|xpath) element$/) do |locator, locator_type|
    "
      Locator can be xpath or css.
    "
    # E.g. : And click ".login" css element
    find("#{locator_type}".to_sym, locator).click
  end
  When(/^click "([^"]*)" under "([^"]*)"$/) do |link, menu|
    "
      Finds a element with capybara default_selector, link can be id, text or title
    "
    # E.g : And click "Logout" under ".account-menu"
    find(menu, wait: BddHelper.timeout).hover
    click_link(link, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" item (\d+) under "([^"]*)" menu item (\d+)$/) do |link, link_item, menu, menu_item|
    "
      Link can be id, text or title, menu can be text content
    "
    # E.g : And click "Logout" item 2 under "Account" menu item 1
    (page.all(:xpath, "//*[text()='#{menu}']", wait: BddHelper.timeout)[menu_item]).hover
    (page.all(:link, link, wait: BddHelper.timeout)[link_item]).click
  end
rescue StandardError => e
  puts e
end
