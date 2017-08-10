require_relative '../../bdd-helper/step_definitions/env'

When(/^(check|uncheck) "([^"]*)" checkbox$/) do |condition, checkbox|
  # E.g. : .. check "Agree" checkbox
  # checkbox can be name, id or label
  if condition == 'check'
    check(checkbox)
  elsif condition == 'uncheck'
    uncheck(checkbox)
  end
end

When(/^choose "([^"]*)" radio button$/) do |radio_button|
  # E.g. : .. choose "Yes" radio button
  # radio_button can be name, id or label
  choose(radio_button)
end

And(/^check type "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
  page.should have_selector(:"#{web_element_type}", web_element, wait: @timeout)
  find(:"#{web_element_type}", web_element).set(true)
end