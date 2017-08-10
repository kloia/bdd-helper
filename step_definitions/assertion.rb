require_relative '../../bdd-helper/step_definitions/env'
require_relative '../../bdd-helper/support/config'

include BaseConstants

Then(/^page (should|should_not) contain "([^"]*)" content$/) do |condition, content|
  # E.g. : page should contain "Test" content
  # E.g. : page should_not contain "Test" content
  # page.should have_content(content, count: count, wait: @timeout)
  sleep 1
  if condition == 'should'
    page.should have_content(content, wait: @timeout)

  elsif condition == 'should_not'
    page.should_not have_content(content, wait: @timeout)
  end
end

Then(/^page (should|should_not) contain the following contents:$/) do |condition, table|
  sleep 1
  values = table.raw
  values.each {|raw|
    if condition == 'should'
      page.should have_content(raw[0], wait: @timeout)
    elsif condition == 'should_not'
      page.should_not have_content(raw[0], wait: @timeout)
    end
  }
end

Then(/^page (should|should_not) contain "([^"]*)" "([^"]*)" web element/) do |condition, web_element_type, web_element|
  # E.g. : page should contain "css" "#test .form" web element
  sleep 1
  if condition == 'should'
    page.should have_selector(:"#{web_element_type}", web_element, wait: @timeout)

  elsif condition == 'should_not'
    page.should_not have_selector(:"#{web_element_type}", web_element, wait: @timeout)
  end
end

Then(/^page (should|should_not) contain "([^"]*)" button$/) do |condition, button|
  # E.g. : page should contain "Save" button
  # E.g. : page should_not contain "Save" button
  # page.should have_content(content, count: count, wait: @timeout)
  sleep 1
  if condition == 'should'
    page.should have_button(button, wait: @timeout)

  elsif condition == 'should_not'
    page.should_not have_button(button, wait: @timeout)
  end
end

Then(/^"([^"]*)" button (should|should_not) be disabled$/) do |button, condition|
  sleep 1
  if condition == 'should'
    find_button button, disabled: true

  elsif condition == 'should_not'
    find_button button, disabled: false
  end
end

When(/^"([^"]*)" checkbox should be (checked|unchecked)$/) do |checkbox, condition|
  # E.g. : .. "Agree" checkbox should be checked
  # checkbox can be label, value or id
  if condition == 'checked'
    expect(page).to have_field(checkbox, checked: true, visible: true)
  elsif condition == 'unchecked'
    expect(page).to have_field(checkbox, checked: false, visible: true)
  end
end

When(/^"([^"]*)" radio button should be (selected|unselected)$/) do |radio_button, condition|
  # E.g. : .. "Yes" radio button should be selected
  # radio_button can be name, id or label
  if condition == 'checked'
    expect(page).to have_field(radio_button, checked: true, visible: true)
  elsif condition == 'unchecked'
    expect(page).to have_field(radio_button, checked: false, visible: true)
  end
end

Then(/^validation message should be "([^"]*)" about "([^"]*)" field$/) do |expected_message, element_value|
  sleep 1.5
  if page.has_css?(element_value)
    expected_message.should == page.execute_script("return document.querySelector('#{element_value}').innerHTML.trim();")

  elsif page.has_no_css?(element_value)
    expected_message.should == ''
  end
end