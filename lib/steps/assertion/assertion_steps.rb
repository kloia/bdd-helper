begin

  Then(/^verify "([^"]*)" text is displayed$/) do |text|
    page.should have_text(text)
  end

  Then(/^verify "([^"]*)" text is not displayed$/) do |text|
    page.should_not have_text(text, wait: $timeout)
  end

  Then(/^verify "([^"]*)" element has "([^"]*)" text$/) do |selector, text|
    # selector should be a css selector
    page.should have_selector(selector, text: text)
  end

  Then(/^verify "([^"]*)" element has not "([^"]*)" text$/) do |selector, text|
    # selector should be a css selector
    page.should_not have_selector(selector, text: text, wait: $timeout)
  end

  Then(/^verify "([^"]*)" button is displayed$/) do |button|
    page.should have_button(button, wait: $timeout)
  end

  Then(/^verify "([^"]*)" button is not displayed$/) do |button|
    page.should_not have_button(button)
  end

  Then(/^verify "([^"]*)" button is enabled$/) do |button|
    page.should have_button(button, disabled: false)
  end

  Then(/^verify "([^"]*)" button is disabled$/) do |button|
    page.should have_button(button, disabled: true)
  end

  Then(/^verify current url is "([^"]*)"$/) do |current_url|
    current_url.should == URI.parse(current_url)
  end

  Then(/^verify current path is "([^"]*)"$/) do |current_path|
    assert_current_path(current_path)
  end

  Then(/^verify page title is "([^"]*)"$/) do |page_title|
    assert_title(page_title)
  end

  Then(/^verify page title contains "([^"]*)"$/) do |text|
    title.should include(text)
  end

  Then(/^verify below texts are displayed:$/) do |table|
    table.raw.each { |raw| page.should have_text(raw[0]) }
  end

  Then(/^verify below texts are not displayed:$/) do |table|
    table.raw.each { |raw| page.should_not have_text(raw[0]) }
  end

  Then(/^verify "([^"]*)" alert message is displayed$/) do |text|
    text.should == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" alert message is not displayed$/) do |text|
    text.should_not == page.driver.browser.switch_to.alert.text
  end

  Then(/^verify "([^"]*)" checkbox is checked$/) do |checkbox|
    expect(page).to have_field(checkbox, checked: true, visible: true)
  end

  Then(/^verify "([^"]*)" checkbox is unchecked/) do |checkbox|
    expect(page).to have_field(checkbox, checked: false, visible: true)
  end

  Then(/^verify "([^"]*)" radio button is selected$/) do |radio_button|
    expect(page).to have_field(radio_button, checked: true, visible: true)
  end

  Then(/^verify "([^"]*)" radio button is not selected$/) do |radio_button|
    expect(page).to have_field(radio_button, checked: false, visible: true)
  end

  Then(/^verify "([^"]*)" dropdown contains "([^"]*)" option$/) do |dropdown, option_text|
    # https://stackoverflow.com/a/8229536/3864693
    # farkli alternatifler de var, buradaki option'lari list olarak alip da kontrol ettirebiliriz
    expect(page).to have_select(dropdown, :options => [option_text])
    page.should have_select(dropdown, with_options: [option_text])
  end

  Then(/^verify "([^"]*)" dropdown does not contain "([^"]*)" option$/) do |dropdown, option_text|
    page.should_not have_select(dropdown, with_options: [option_text])
  end

  Then(/^verify "([^"]*)" dropdown contains below options:$/) do |dropdown, table|
    table.raw.each { |raw| page.should have_select(dropdown, with_options: [raw[0]]) }
  end

  Then(/^verify "([^"]*)" dropdown does not contain below options:$/) do |arg, table|
    table.raw.each { |raw| page.should_not have_select(dropdown, with_options: [raw[0]]) }
  end

  Then(/^verify "([^"]*)" options is selected from "([^"]*)" dropdown$/) do |option, dropdown|
    page.should have_select(dropdown, selected: option)
  end

  Then(/^verify "([^"]*)" options is not selected from "([^"]*)" dropdown$/) do |option, dropdown|
    page.should_not have_select(dropdown, selected: option)
  end

rescue Exception => exception
  puts exception

end