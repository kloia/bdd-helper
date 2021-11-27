begin

  When(/^(check|uncheck) "([^"]*)" checkbox$/) do |condition, checkbox|
    # E.g. : check "Agree" checkbox
    # checkbox can be name, id or label
    if condition == 'check'
      check(checkbox)
    elsif condition == 'uncheck'
      uncheck(checkbox)
    end
  end

  And(/^check type "([^"]*)" value "([^"]*)" web element$/) do |web_element_type, web_element|
    page.should have_selector(:"#{web_element_type}", web_element, wait: $timeout)
    find(:"#{web_element_type}", web_element).set(true)
  end

rescue Exception => exception
  puts exception

end
