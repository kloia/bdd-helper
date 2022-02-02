begin
  When(/^choose "([^"]*)" radio button$/) do |radio_button_id_name_or_label|
    "
      Radio Button can be name, id and label text
    "
    # E.g : And choose "Male" radio button
    choose(radio_button_id_name_or_label, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
