require_relative '../../bdd-helper/step_definitions/env'

And(/^select "([^"]*)" as "([^"]*)" from dropdown$/) do |dropdown, option|
  # E.g : select "Country" as "United States" from dropdown
  # E.g : select "United States", from: "Country", :match => :first ===>> to select first matched option
  # dropdown can be id, name, label text
  select(option, from: dropdown) # OR ==>> find('#select_id').select('value')
end

Then /^"([^"]*)" (should|should_not) be selected for "([^"]*)" dropdown$/ do |selected_option, condition, dropdown|
  # E.g : "United States" should be selected for "Country" dropdown
  if condition == 'should'
    page.should have_select(dropdown, selected: selected_option)

  elsif condition == 'should_not'
    page.should_not have_select(dropdown, selected: selected_option)
  end
end

Then /^"([^"]*)" dropdown (should|should_not) contain "([^"]*)" option$/ do |dropdown, condition, option_text|
  # E.g : .. "Country" dropdown should contain "United States" option
  if condition == 'should'
    page.should have_select(dropdown, with_options: [option_text])

  elsif condition == 'should_not'
    page.should_not have_select(dropdown, with_options: [option_text])
  end
end

Then /^"([^"]*)" dropdown (should|should_not) contain following options:$/ do |dropdown, condition, table|
  values = table.raw
  sleep 1
  values.each {|raw|
    if condition == 'should'
      page.should have_select(dropdown, with_options: [raw[0]])

    elsif condition == 'should_not'
      page.should_not have_select(dropdown, with_options: [raw[0]])
    end}
end