begin
  When(/^choose "([^"]*)" radio button$/) do |radio_button_id_name_or_label|
    choose(radio_button_id_name_or_label)
  end
rescue StandardError => e
  puts e
end
