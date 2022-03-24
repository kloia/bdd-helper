# frozen_string = true
begin
  Then(/^verify "([^"]*)" text is displayed$/) do |text|
    # E.g : Then verify "Thank you for filling in the form" text is displayed
    page.should have_text(text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" text is not displayed$/) do |text|
    # E.g : Then verify "Thank you for filling in the form" text is not displayed
    page.should_not have_text(text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" element has "([^"]*)" text$/) do |selector, text|
    "
      Selector should be a css selector
    "
    # E.g : Then verify ".success-message" element has "Welcome" text
    page.should have_selector(selector, text: text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" element has not "([^"]*)" text$/) do |selector, text|
    "
      Selector should be a css selector
    "
    # E.g : Then verify ".success-message" element has not "Welcome" text
    page.should_not have_selector(selector, text: text, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" element contains "([^"]*)" text$/) do |selector, text|
    "
      Selector should be a css selector
    "
    # E.g : Then verify ".success-message" element contains "elcom" text
    page.should have_selector(selector, text: text, exact_text: false, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" (css|xpath) element starts with "([^"]*)" text$/) do |selector, selector_type, text|
    "
      Selector can be css or xpath.
    "
    # E.g : Then verify "#select-class-example legend" css element starts with "Select" text
    case selector_type
    when "xpath"
      find(:xpath, "#{selector}").text.should start_with(text)
    else
      #which is css
      find(:css, "#{selector}").text.should start_with(text)
    end
  end

  Then(/^verify "([^"]*)" (css|xpath) element ends with "([^"]*)" text$/) do |selector, selector_type, text|
    "
      Selector can be css or xpath.
    "
    # E.g : Then verify "//*[@id='open-tab-example-div']" xpath element ends with "Tab" text
    case selector_type
    when "xpath"
      find(:xpath, "#{selector}").text.should end_with(text)
    else
      #which is css
      find(:css, "#{selector}").text.should end_with(text)
    end
  end

  Then(/^verify expected number of exact matches for element "([^"]*)" is (\d+)$/) do |selector, number|
    "
      Selector should be a css selector
    "
    # E.g : Then verify expected number of exact matches for element "[name='cars']" is 7
    expect(page).to have_selector(selector, visible: true, count: number, wait: BddHelper.timeout)
  end

  Then(/^verify expected number of minimum matches for element "([^"]*)" is (\d+)$/) do |selector, number|
    "
      Selector should be a css selector
    "
    # E.g : Then verify expected number of minimum matches for element "[name='cars']" is 1
    page.assert_selector(selector, minimum: number, wait: BddHelper.timeout)
  end

  Then(/^verify expected number of maximum matches for element "([^"]*)" is (\d+)$/) do |selector, number|
    "
      Selector should be a css selector
    "
    # E.g : Then verify expected number of maximum matches for element "[name='cars']" is 7
    page.assert_selector(selector, maximum: number, wait: BddHelper.timeout)
  end

  Then(/^verify expected number of matches found for element "([^"]*)" is between (\d+) and (\d+)$/) do |selector, minimum, maximum|
    "
      Selector should be a css selector
    "
    # E.g : Then verify expected number of matches found for element "[name='cars']" is between 1 and 7
    page.assert_selector(selector, between: minimum..maximum, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is displayed$/) do |button|
    "
      Button can be id, name, value, or title
    "
    # E.g : Then verify "Login" button is displayed
    page.should have_button(button, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is not displayed$/) do |button|
    "
      Button can be id, name, value, or title
    "
    # E.g : Then verify "Login" button is not displayed
    page.should_not have_button(button, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is enabled$/) do |button|
    "
      Button can be id, name, value, or title
    "
    # E.g : Then verify "Login" button is enabled
    page.should have_button(button, disabled: false, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" button is disabled$/) do |button|
    "
      Button can be id, name, value, or title
    "
    # E.g : Then verify "Login" button is disabled
    page.should have_button(button, disabled: true, wait: BddHelper.timeout)
  end

  Then(/^verify current url is "([^"]*)"$/) do |expected_url|
    "
      Expected url should be fully URL of the current page
    "
    # E.g : Then verify current url is "http:www.example.com"
    current_url.should == expected_url
  end

  Then(/^verify current path is "([^"]*)"$/) do |current_path|
    "
      Path should be path+query of the current page
    "
    # E.g : Then verify current path is "/login"
    assert_current_path(current_path)
  end

  Then(/^verify page title is "([^"]*)"$/) do |page_title|
    "
      Title should be title of the current page
    "
    # E.g : Then verify page title is "Welcome"
    assert_title(page_title, wait: BddHelper.timeout)
  end

  Then(/^verify page title contains "([^"]*)"$/) do |text|
    "
      Title should be contains of the current page title
    "
    # E.g : Then verify page title contains "Welcome"
    title.should include(text)
  end

  Then(/^verify below texts are displayed:$/) do |table|
    # E.g : Then verify below texts are displayed:
    #       | Welcome   |
    #       | Thank you |
    table.raw.each { |raw| page.should have_text(raw[0], wait: BddHelper.timeout) }
  end

  Then(/^verify below texts are not displayed:$/) do |table|
    # E.g : Then verify below texts are not displayed:
    #       | Welcome   |
    #       | Thank you |
    table.raw.each { |raw| page.should_not have_text(raw[0], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" alert message is displayed$/) do |text|
    # E.g : Then verify "Successful" alert message is displayed
    text.should == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" alert message is not displayed$/) do |text|
    # E.g : Then verify "Successful" alert message is not displayed
    text.should_not == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" checkbox is checked$/) do |checkbox|
    "
      Checkbox can be name, id and label text
    "
    # E.g : Then verify "Terms & Conditions" checkbox is checked
    expect(page).to have_field(checkbox, checked: true, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" checkbox is unchecked/) do |checkbox|
    "
      Checkbox can be name, id and label text
    "
    # E.g : Then verify "Terms & Conditions" checkbox is unchecked
    expect(page).to have_field(checkbox, checked: false, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" radio button is selected$/) do |radio_button|
    "
      Radio Button can be name, id and label text
    "
    # E.g : Then verify "Male" radio button is selected
    expect(page).to have_field(radio_button, checked: true, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" radio button is not selected$/) do |radio_button|
    "
      Radio Button can be name, id and label text
    "
    # E.g : Then verify "Female" radio button is not selected
    expect(page).to have_field(radio_button, checked: false, visible: true, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown contains "([^"]*)" option$/) do |dropdown, option_text|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "Country" dropdown contains "United States" option
    page.should have_select(dropdown, with_options: [option_text], wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown does not contain "([^"]*)" option$/) do |dropdown, option_text|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "Country" dropdown does not contain "United States" option
    page.should_not have_select(dropdown, with_options: [option_text], wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" dropdown contains the options below:$/) do |dropdown, table|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "Country" dropdown contains the options below:
    #       |United States|
    #       |Turkey       |
    table.raw.each { |raw| page.should have_select(dropdown, with_options: [raw[0]], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" dropdown does not contain the options below:$/) do |dropdown, table|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "Country" dropdown does not contain the options below:
    #       |United States|
    #       |Turkey       |
    table.raw.each { |raw| page.should_not have_select(dropdown, with_options: [raw[0]], wait: BddHelper.timeout) }
  end

  Then(/^verify "([^"]*)" options is selected from "([^"]*)" dropdown$/) do |option, dropdown|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "United States" options is selected from "Country" dropdown
    page.should have_select(dropdown, selected: option, wait: BddHelper.timeout)
  end

  Then(/^verify "([^"]*)" options is not selected from "([^"]*)" dropdown$/) do |option, dropdown|
    "
      Dropdown can be id, name, label
    "
    # E.g : Then verify "United States" options is not selected from "Country" dropdown
    page.should_not have_select(dropdown, selected: option, wait: BddHelper.timeout)
  end

rescue StandardError => e
  puts e
end

