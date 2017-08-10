require_relative '../../bdd-helper/step_definitions/env'

When(/^hover to "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
  find(:"#{web_element_type}", web_element).trigger(:mouseover)
end

When(/^wait "([^"]*)" seconds$/) do |sec_value|
  sleep sec_value.to_i
end

And(/^generate random string and type into "([^"]*)"$/) do |field|
  charset = (0...8).map {(65 + rand(26)).chr}.join
  fill_in(field, with: charset)
end

And(/^execute javascript code "([^"]*)"/) do |code|
  page.execute_script(code)
  sleep 2
end