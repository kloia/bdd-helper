begin
  When(/^click "([^"]*)" button$/) do |button_id_title_or_text|
    # E.g : click "Sign In" button
    # E.g : click_button "Sign In", wait: BddHelper.timeout ===>> to click the button matched
    # can be element of type submit or button. Button can be name, id, value or title
    click_button(button_id_title_or_text, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" link$/) do |link_id_title_or_text|
    # E.g : click "Sign In" link
    # E.g : click_link "Sign In", wait: BddHelper.timeout ===>> to click the link matched
    # link can be id, text or title
    click_link(link_id_title_or_text, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" under "([^"]*)"$/) do |link, menu|
    # E.g : click "Logout" under ".account-menu"
    # E.g : find(".account-menu", wait: BddHelper.timeout).hover.click_link("Logout", wait: BddHelper.timeout) ===>> to hover over the selector matched and click the link matched
    # Finds a element with capybara default_selector, link can be id, text or title
    find(menu, wait: BddHelper.timeout).hover
    click_link(link, wait: BddHelper.timeout)
  end

  When(/^click "([^"]*)" item (\d+) under "([^"]*)" menu item (\d+)$/) do |link, link_item, menu, menu_item|
    # E.g : click "Logout" item 2 under "Account" menu item 1
    # E.g : (page.all(:xpath, "//*[text()='Account']", wait: BddHelper.timeout)[1]).hover ===>> to hover the first item of text matched
    # E.g : page.all(:link, "Logout", wait: BddHelper.timeout)[2].click ===>> to click the second item of link matched
    # link can be id, text or title
    (page.all(:xpath, "//*[text()='#{menu}']", wait: BddHelper.timeout)[menu_item]).hover
    (page.all(:link, link, wait: BddHelper.timeout)[link_item]).click
  end
rescue StandardError => e
  puts e
end
