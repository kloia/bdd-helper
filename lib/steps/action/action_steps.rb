begin

  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    fill_in(locator, with: text)
  end

  When(/^fill inputs:$/) do |table|
    table.raw.each { |raw| fill_in(raw[0], with: raw[1]) }
  end

  When(/^fill "([^"]*)" with random (first name)$/) do |locator,arg|
    fill_in(locator, with: Faker::Name.first_name)
  end

  When(/^fill "([^"]*)" with random (last name)$/) do |locator,arg|
    fill_in(locator, with: Faker::Name.last_name)
  end

  When(/^fill "([^"]*)" with random (email)$/) do |locator,arg|
    fill_in(locator, with: Faker::Internet.safe_email)
  end

  When(/^fill "([^"]*)" with random (phoneNumber)$/) do |locator,arg|
    fill_in(locator, with: Array.new(7) {Array(0..9).sample}.join)
  end

  When(/^fill "([^"]*)" with random (address)$/) do |locator,arg|
    fill_in(locator, with: Faker::Address.full_address)
  end

  When(/^fill "([^"]*)" with random (zipCode)$/) do |locator,arg|
    fill_in(locator, with: Faker::Address.zip_code)
  end

  When(/^click "([^"]*)" button$/) do |button_id_title_or_text|
    click_button(button_id_title_or_text)
  end

  When(/^click "([^"]*)" link$/) do |link_id_title_or_text|
    click_link(link_id_title_or_text)
  end

  When(/^check "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    check(checkbox_name_id_or_label)
  end

  When(/^uncheck "([^"]*)" checkbox$/) do |checkbox_name_id_or_label|
    uncheck(checkbox_name_id_or_label)
  end

  When(/^choose "([^"]*)" radio button$/) do |radio_button_id_name_or_label|
    choose(radio_button_id_name_or_label)
  end

  When(/^clear "([^"]*)" input$/) do |locator|
    fill_in(locator, with: "", fill_options: { clear: :backspace })
  end

  When(/^select "([^"]*)" from "([^"]*)" dropdown$/) do |option, dropdown_id_name_or_label_text|
    # E.g : select "Country" as "United States" from dropdown
    # E.g : select "United States", from: "Country", :match => :first ===>> to select first matched option
    # dropdown can be id, name, label
    if !has_select?(dropdown_id_name_or_label_text)
        raise "#{dropdown_id_name_or_label_text} is not a select."
    end
    select(option, from: dropdown_id_name_or_label_text)
    page.should have_select(dropdown_id_name_or_label_text, selected: option)
  end

  When(/^press "([^"]*)" (enter)$/) do |locator|
    find(locator).native.send_keys(:return)
  end

  When(/^press "([^"]*)" (down)$/) do |locator|
    find(locator).native.send_keys(:down)
  end

  When(/^press "([^"]*)" (up)$/) do |locator|
    find(locator).native.send_keys(:up)
  end

  When(/^press "([^"]*)" (delete)$/) do |locator|
    find(locator).native.clear
  end

  When(/^press "([^"]*)" (left)$/) do |locator|
    find(locator).native.clear
  end

  When(/^press "([^"]*)" (right)$/) do |locator|
    find(locator).native.clear
  end

  When(/^click "([^"]*)" under "([^"]*)"$/) do |link, menu|
    find(menu).hover.click_link(link)
  end

  When(/^click "([^"]*)" item (\d+) under "([^"]*)" menu item (\d+)$/) do |link, linkItem, menu, menuItem|
    page.all(:xpath, "//*[text()='#{menu}']")[menuItem].hover
    page.all(:link ,link)[linkItem].click
  end

  When(/^hover over "([^"]*)"$/) do |text|
    find(xpath: "//*[text()='#{text}']").hover
  end


rescue Exception => exception
  puts exception

end

