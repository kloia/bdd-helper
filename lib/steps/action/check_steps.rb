begin

  When(/^check "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    check(checkbox_name_id_or_label)
  end

  When(/^uncheck "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    uncheck(checkbox_name_id_or_label)
  end

rescue Exception => exception
  puts exception

end