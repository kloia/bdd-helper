begin

  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    fill_in(locator, with: text)
  end

  When(/^fill inputs:$/) do |table|
    table.raw.each { |raw| fill_in(raw[0], with: raw[1]) }
  end

  When(/^click "([^"]*)" button$/) do |button_id_title_or_text|
    click_button(button_id_title_or_text)
  end

  When(/^click "([^"]*)" link$/) do |link_id_title_or_text|
    click_link(link_id_title_or_text)
  end

  When(/^check "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    check(checkbox_name_id_or_label)
    # asagidaki de var daha saglikli ancak css kullanmak gerekiyor, bir yol var mi dusun.
    # find(:"#{web_element_type}", web_element).set(true)
  end

  When(/^uncheck "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    uncheck(checkbox_name_id_or_label)
  end

  When(/^choose "([^"]*)" radio button$/) do |radio_button_id_name_or_label|
    choose(radio_button_id_name_or_label)
  end

  When(/^clear "([^"]*)" input$/) do |input|
    # bunlardan birini kullanacagiz, denememiz gerek
    # find('locator').native.clear
    # fill_in('Foo', with: 'bar', fill_options: { clear: :backspace })
    # fill_in "Name", with: ""
  end

  When(/^select "([^"]*)" from "([^"]*)" dropdown$/) do |option, dropdown_id_name_or_label_text|
    # E.g : select "Country" as "United States" from dropdown
    # E.g : select "United States", from: "Country", :match => :first ===>> to select first matched option
    # dropdown can be id, name, label text
    select(option, from: dropdown_id_name_or_label_text) # OR ==>> find('#select_id').select('value')
  end

  When(/^press "([^"]*)" enter$/) do |locator|
    # https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FNode%2FElement%3Asend_keys
    # https://stackoverflow.com/questions/8474103/is-there-a-way-to-send-key-presses-to-webkit-using-capybara
    find(locator).native.send_keys(:return)
  end

rescue Exception => exception
  puts exception

end