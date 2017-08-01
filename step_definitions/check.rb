require_relative '../../common/step_definitions/env'

When(/^.. (check|uncheck) "([^"]*)" checkbox$/) do |condition, checkbox|
  # E.g. : .. check "Agree" checkbox
  # checkbox can be name, id or label
  if condition == 'check'
    check(checkbox)
  elsif condition == 'uncheck'
    uncheck(checkbox)
  end
end

When(/^.. choose "([^"]*)" radio button$/) do |radio_button|
  # E.g. : .. choose "Yes" radio button
  # radio_button can be name, id or label
  choose(radio_button)
end