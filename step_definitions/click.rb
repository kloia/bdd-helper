require_relative '../../bdd-helper/step_definitions/env'

When(/^click "([^"]*)" (link|button) by (id|title|text)$/) do |identifier, identifier_type, condition|
  # E.g: .. click "Save" button by text
  Capybara.ignore_hidden_elements = false
  if condition == 'title' || condition == 'text'
    page.should have_content(identifier)

  elsif condition == 'id'
    page.should have_selector(:id, identifier)
  end

  if identifier_type == 'link'
    # link can be id, title or text
    Capybara.ignore_hidden_elements = false
    click_link(identifier)

  elsif identifier_type == 'button'
    # button can be id, title, value or text
    Capybara.ignore_hidden_elements = false
    click_button(identifier)
  end
end

Then(/^click type "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
  # E.g: .. click type "id" value "save" web element
  page.should have_selector(:"#{web_element_type}", web_element)
  find(:"#{web_element_type}", web_element).click
end