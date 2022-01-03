require_relative '../config'
begin
  When(/^hover to "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
    # E.g: hover to "css" value ".map" web element
    # find(:css, '.map').trigger(:mouseover)  ===>> to hover over the matching web element
    # web element type can be css, xpath, id, field, link, button, link_or_button or label
    find(:"#{web_element_type}", web_element).trigger(:mouseover)
  end

  When(/^wait (\d+) (?:second|seconds)$/) do |sec_value|
    # E.g: wait 2 seconds
    # E.g: sleep 2.to_i ===>> to wait 2 seconds
    # second should be integer
    sleep sec_value.to_i
  end

  And(/^generate "([^"]*)" char random string and type into type "([^"]*)" value "([^"]*)"$/) do |count, web_element_type, web_element|
    # E.g: generate "10" char random string and type into type "id" value "mobile"
    # E.g: find(:id, "mobile", wait: BddHelper.timeout).set((0...10).map { rand(65..90).chr }.join) ===>> to generate random phone number and fiil it matched fiilable input
    # web element type can be css, xpath, id, field, fillable_field or label
    charset = (0...count).map { rand(65..90).chr }.join
    find(:"#{web_element_type}", web_element, wait: BddHelper.timeout).set(charset)
  end

  And(/^execute javascript code "([^"]*)"/) do |code|
    # E.g : execute javascript code "window.scrollTo(0, document.body.scrollHeight)"
    # E.g : page.execute_script("window.scrollTo(0, document.body.scrollHeight)") ===>> to execute javascript code
    # should be javascript code
    page.execute_script(code)
  end

rescue StandardError => e
  puts e
end
