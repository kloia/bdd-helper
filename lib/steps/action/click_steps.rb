begin

  When(/^click "([^"]*)" button$/) do |button_id_title_or_text|
    click_button(button_id_title_or_text)
  end

  When(/^click "([^"]*)" link$/) do |link_id_title_or_text|
    click_link(link_id_title_or_text)
  end

  When(/^click "([^"]*)" under "([^"]*)"$/) do |link, menu|
    find(menu).hover.click_link(link)
  end

  When(/^click "([^"]*)" item (\d+) under "([^"]*)" menu item (\d+)$/) do |link, linkItem, menu, menuItem|
    page.all(:xpath, "//*[text()='#{menu}']")[menuItem].hover
    page.all(:link ,link)[linkItem].click
  end

rescue Exception => exception
  puts exception

end

