begin
  When(/^choose "([^"]*)" radio button$/) do |radio_button_id_name_or_label|
    # E.g : choose "Male" radio button
    # E.g : choose('Male', wait: BddHelper.timeout) ===>> to choose the radio button matched
    # choose can be name, id and label text
    choose(radio_button_id_name_or_label, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
