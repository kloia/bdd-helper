begin
  When(/^check "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    # E.g : check "Female" checkbox
    # E.g : check("Female", wait: BddHelper.timeout) ===>> to check the checkbox matched
    # check box can be name, id and label text
    check(checkbox_name_id_or_label, wait: BddHelper.timeout)
  end

  When(/^uncheck "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    # E.g : uncheck "Female" checkbox
    # E.g : uncheck("Female", wait: BddHelper.timeout) ===>> to uncheck the checkbox matched
    # check box can be name, id and label text
    uncheck(checkbox_name_id_or_label, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
