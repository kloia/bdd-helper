begin
  When(/^hover to "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
    "
      Web element type can be css, xpath, id, field, link, button, link_or_button or label
    "
    # E.g: And hover to "css" value ".list_item" web element
    find(:"#{web_element_type}".to_sym, web_element).hover
  end

  When(/^wait (\d+) (?:second|seconds)$/) do |sec_value|
    "
      Second's value should be integer
    "
    # E.g: And wait 2 seconds
    sleep sec_value.to_i
  end

  And(/^generate (\d+) char random string and type into type "([^"]*)" value "([^"]*)"$/) do |count, web_element_type, web_element|
    "
      Web element type can be css, xpath, id, field, fillable_field or label
    "
    # E.g: And generate "10" char random string and type into type "id" value "mobile"
    charset = (0...count).map { rand(65..90).chr }.join
    find(:"#{web_element_type}".to_sym, web_element, wait: BddHelper.timeout).set(charset)
  end

  And(/^execute javascript code "([^"]*)"/) do |code|
    "
      Code should be javascript code
    "
    # E.g : And execute javascript code "window.location.reload()"
    page.execute_script(code)
  end

rescue StandardError => e
  puts e
end
