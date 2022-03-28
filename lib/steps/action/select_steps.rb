begin
  When(/^select "([^"]*)" from "([^"]*)" dropdown$/) do |option, dropdown_id_name_or_label_text|
    "
      Dropdown can be id, name, label
    "
    # E.g : And select "United States" from "Country" dropdown
    unless has_select?(dropdown_id_name_or_label_text)
      raise "#{dropdown_id_name_or_label_text} is not a select box."
    end
    select(option, from: dropdown_id_name_or_label_text, wait: BddHelper.timeout)
    page.should have_select(dropdown_id_name_or_label_text, selected: option)
  end

  When(/^select "([^"]*)" from "([^"]*)" (xpath|css) element$/) do |option, dropdown_locator, locator_type|
    "
    Option is visible text and the dropdown locator should be css or xpath according to locator type.
    "
    # E.g : And select "Honda" from "#carselect" css element
    find("#{locator_type}".to_sym, dropdown_locator).find(:option, option).select_option
  end

rescue StandardError => e
  puts e
end
