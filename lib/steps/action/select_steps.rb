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

rescue StandardError => e
  puts e
end
