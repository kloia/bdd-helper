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

  When(/^click "([^"]*)" item (\d+) under "([^"]*)" menu item (\d+)$/) do |link, link_item, menu, menu_item|
    page.all(:xpath, "//*[text()='#{menu}']")[menu_item].hover
    page.all(:link, link)[link_item].click
  end

rescue StandardError => e
  puts e
end

