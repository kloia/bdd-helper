begin
  Then(/^verify "([^"]*)" text is displayed$/) do |text|
    # E.g : verify "Thank you for filling in the form" text is displayed
    # E.g : page.should have_text("Thank you for filling in the form", wait: BddHelper.timeout) ===>> to verify text is displayed on the page
    # have_text can be text content
    page.should have_text(text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" text is not displayed$/) do |text|
    # E.g : verify "Thank you for filling in the form" text is not displayed
    # E.g : page.should_not have_text("Thank you for filling in the form", wait: BddHelper.timeout) ===>> to verify text is not displayed on the page
    # have_text can be text content
    page.should_not have_text(text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" element has "([^"]*)" text$/) do |selector, text|
    # E.g : verify ".success-message" element has "Welcome" text
    # E.g : page.should have_selector(".success-message", text: "Welcome", wait: BddHelper.timeout) ===>> to verify that the selector and its text are displayed on the page
    # selector should be a css selector
    page.should have_selector(selector, text: text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" element has not "([^"]*)" text$/) do |selector, text|
    # E.g : verify ".success-message" element has not "Welcome" text
    # E.g : page.should_not have_selector(".success-message", text: "Welcome", wait: BddHelper.timeout) ===>> to verify that the selector and its text are not displayed on the page
    # selector should be a css selector
    page.should_not have_selector(selector, text: text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is displayed$/) do |button|
    # E.g : verify "Login" button is displayed
    # E.g : page.should have_button "Login" , wait: BddHelper.timeout ===>> to verify that button is displayed on the page
    # button can be id, name, value, or title
    page.should have_button(button, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is not displayed$/) do |button|
    # E.g : verify "Login" button is not displayed
    # E.g : page.should_not have_button("Login" , wait: BddHelper.timeout) ===>> to verify that button is not displayed on the page
    # button can be id, name, value, or title
    page.should_not have_button(button, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is enabled$/) do |button|
    # E.g : verify "Login" button is enabled
    # E.g : page.should have_button("Login" , disabled: false, wait: BddHelper.timeout) ===>> to verify that button is enabled on the page
    # button can be id, name, value, or title
    page.should have_button(button, disabled: false, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is disabled$/) do |button|
    # E.g : verify "Login" button is disabled
    # E.g : page.should have_button "Login" , disabled: true, wait: BddHelper.timeout ===>> to verify that button is disabled on the page
    # button can be id, name, value, or title
    page.should have_button(button, disabled: true, wait: BddHelper.timeout)
  end

  Then(/^verify current url is "([^"]*)"$/) do |expected_url|
    # E.g : verify current url is "http:www.example.com"
    # E.g : current_url.should == "http:www.example.com" ===>> to verify full URL of the current page
    # expected url should be fully URL of the current page
    current_url.should == expected_url
  end

  Then(/^verify current path is "([^"]*)"$/) do |current_path|
    # E.g : verify current path is "/login"
    # E.g : assert_current_path("/login") ===>> to verify path of the current page
    # should be path+query of the current page
    assert_current_path(current_path)
  end

  Then(/^verify page title is "([^"]*)"$/) do |page_title|
    # E.g : verify page title is "Welcome"
    # E.g : assert_title("Welcome", wait: BddHelper.timeout) ===>> asserts that the page has the given title
    # title should be title of the current page
    assert_title(page_title, wait: BddHelper.timeout)
  end

  Then(/^verify page title contains "([^"]*)"$/) do |text|
    # E.g : verify page title contains "Welcome"
    # E.g :title.should include("Welcome") ===>> to verify that text is contains the page title
    # title should be contains of the current page title
    title.should include(text)
  end

  Then(/^verify below texts are displayed:$/) do |table|
    # E.g : Then verify below texts are displayed:
    #       | Welcome   |
    #       | Thank you |
    # E.g : table.raw.each { |raw| page.should have_text(table[0], wait: BddHelper.timeout) } ===>> to verify that all text in the table is on the page
    # have_text can be text content
    table.raw.each { |raw| page.should have_text(raw[0], wait: BddHelper.timeout) }
  end

  Then(/^verify below texts are not displayed:$/) do |table|
    # E.g : Then verify below texts are not displayed:
    #       | Welcome   |
    #       | Thank you |
    # E.g : table.raw.each { |raw| page.should have_text(table[0], wait: BddHelper.timeout) } ===>> to verify that not all text in the table is on the page
    # have_text can be text content
    table.raw.each { |raw| page.should_not have_text(raw[0], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" alert message is displayed$/) do |text|
    # E.g : verify "Successful" alert message is displayed
    # E.g : "Successful".should == page.driver.browser.switch_to.alert.text ===>> to get the alert text and verify displayed
    text.should == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" alert message is not displayed$/) do |text|
    # E.g : verify "Successful" alert message is not displayed
    # E.g : "Successful".should_not == page.driver.browser.switch_to.alert.text ===>> to get the alert text and verify that it is not displayed
    text.should_not == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" checkbox is checked$/) do |checkbox|
    # E.g : verify "Male" checkbox is checked
    # E.g : expect(page).to have_field("Male", checked: true, visible: true, wait: BddHelper.timeout) ===>> to verify the checked matched check box
    # check box can be name, id and label text
    expect(page).to have_field(checkbox, checked: true, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" checkbox is unchecked/) do |checkbox|
    # E.g : verify "Male" checkbox is unchecked
    # E.g : expect(page).to have_field("Male", checked: false, visible: true, wait: BddHelper.timeout) ===>> to verify the unchecked matched check box
    # check box can be name, id and label text
    expect(page).to have_field(checkbox, checked: false, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" radio button is selected$/) do |radio_button|
    # E.g : verify "BMW" radio button is selected
    # E.g : expect(page).to have_field("BMW", checked: true, visible: true, wait: BddHelper.timeout) ===>> to verify the checked matched radio button
    # radio button can be name, id and label text
    expect(page).to have_field(radio_button, checked: true, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" radio button is not selected$/) do |radio_button|
    # E.g : verify "BMW" radio button is not selected
    # E.g : expect(page).to have_field("BMW", checked: false, visible: true, wait: BddHelper.timeout) ===>> to verify the unchecked matched radio button
    # radio button can be name, id and label text
    expect(page).to have_field(radio_button, checked: false, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown contains "([^"]*)" option$/) do |dropdown, option_text|
    # E.g : verify "Country" dropdown contains "United States" option
    # E.g : expect(page).to have_select("Country", options: "United States", wait: BddHelper.timeout) ===>> to verify that matched option is in matched dropdown
    # dropdown can be id, name, label
    page.should have_select(dropdown, with_options: [option_text], wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown does not contain "([^"]*)" option$/) do |dropdown, option_text|
    # E.g : verify "Country" dropdown does not contain "United States" option
    # E.g : page.should_not have_select("Country", options: "United States", wait: BddHelper.timeout) ===>> to verify that matched option is not in matched dropdown
    # dropdown can be id, name, label
    page.should_not have_select(dropdown, with_options: [option_text], wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown contains the options below:$/) do |dropdown, table|
    # E.g : verify "Country" dropdown contains the options below:
    #       |United States|
    #       |Turkey       |
    # page.should have_select("Country", options: "United States", wait: BddHelper.timeout) ===>> to verify that all option in the table is in matched dropdown
    # dropdown can be id, name, label
    table.raw.each { |raw| page.should have_select(dropdown, with_options: [raw[0]], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" dropdown does not contain the options below:$/) do |dropdown, table|
    # E.g : verify "Country" dropdown does not contain the options below:
    #       |United States|
    #       |Turkey       |
    # E.g : page.should_not have_select("Country", options: "United States", wait: BddHelper.timeout) ===>> to verify that all option in the table is not in matched dropdown
    # dropdown can be id, name, label
    table.raw.each { |raw| page.should_not have_select(dropdown, with_options: [raw[0]], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" options is selected from "([^"]*)" dropdown$/) do |option, dropdown|
    # E.g : verify "United States" options is selected from "Country" dropdown
    # page.should have_select("Country", selected: "United States", wait: BddHelper.timeout) ===>> to verify that selected matched option
    # dropdown can be id, name, label
    page.should have_select(dropdown, selected: option, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" options is not selected from "([^"]*)" dropdown$/) do |option, dropdown|
    # E.g : verify "United States" options is not selected from "Country" dropdown
    # page.should_not have_select("Country", selected: "United States", wait: BddHelper.timeout) ===>> to verify that matched option is not selected
    # dropdown can be id, name, label
    page.should_not have_select(dropdown, selected: option, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
