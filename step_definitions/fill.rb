require_relative '../../common/step_definitions/env'

And(/^.. fill "([^"]*)" with "([^"]*)"$/) do |field, value|
  # E.g : ..fill "Phone Number" with "5555555555"
  # field can be name, id or label
  fill_in(field, with: value)
end

And(/^.. fill input boxes with these values:$/) do |table|
  values = table.raw
  values.each {|raw| fill_in(raw[0], with: raw[1])}
end

Then(/^.. fill type "([^"]*)" value "([^"]*)" web element with "([^"]*)"$/) do |web_element_type, web_element, value|
  # E.g: .. click type "id" value "save" web element
  page.should have_selector(:"#{web_element_type}", web_element, wait: @timeout)
  find(:"#{web_element_type}", web_element).set(value)
end

# =scoping=
#     within("//li[@id='employee']") do
#       fill_in 'Name', :with => 'Jimmy'
#     end
# within(:css, "li#employee") do
#   fill_in 'Name', :with => 'Jimmy'
# end
# within_fieldset('Employee') do
#   fill_in 'Name', :with => 'Jimmy'
# end
# within_table('Employee') do
#   fill_in 'Name', :with => 'Jimmy'
# end