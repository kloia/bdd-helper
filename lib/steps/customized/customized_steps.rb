begin

  When(/^hover to "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
    # E.g: hover to "css" value ".map" web element
    find(:"#{web_element_type}", web_element).trigger(:mouseover)
  end

  When(/^wait "([^"]*)" (?:second|seconds)$/) do |sec_value|
    sleep sec_value.to_i
  end

  And(/^generate "([^"]*)" char random string and type into type "([^"]*)" value "([^"]*)"$/) do |count, web_element_type, web_element|
    # E.g: generate "10" char random string and type into type "id" value "mobile"
    charset = (0...count).map { rand(65..90).chr }.join
    find(:"#{web_element_type}", web_element).set(charset)
  end

  And(/^execute javascript code "([^"]*)"/) do |code|
    page.execute_script(code)
    sleep 2
  end
rescue StandardError => e
  puts e
end
