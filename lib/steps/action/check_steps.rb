begin
  When(/^check "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    "
      Checkbox can be name, id and label text
    "
    # E.g : And check "Terms & Conditions" checkbox
    check(checkbox_name_id_or_label, wait: BddHelper.timeout)
  end

  When(/^uncheck "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    "
      Checkbox can be name, id and label text
    "
    # E.g : And uncheck "Privacy Policy" checkbox
    uncheck(checkbox_name_id_or_label, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
