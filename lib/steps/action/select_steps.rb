begin
  When(/^select "([^"]*)" from "([^"]*)" dropdown$/) do |option, dropdown_id_name_or_label_text|
    ##
    # E.g : select "Country" as "United States" from dropdown
    # E.g : select "United States", from: "Country", :match => :first ===>> to select first matched option
    # dropdown can be id, name, label
    unless has_select?(dropdown_id_name_or_label_text)
      raise "#{dropdown_id_name_or_label_text} is not a select box."
    end
    select(option, from: dropdown_id_name_or_label_text, wait: BddHelper.timeout)
    page.should have_select(dropdown_id_name_or_label_text, selected: option)
  end

rescue StandardError => e
  puts e
end
