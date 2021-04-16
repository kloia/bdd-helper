begin

  When(/^scroll (\d+) px (down) the page$/) do |pixel, arg|
    page.execute_script("window.scrollBy(0,#{pixel})")
  end

  When(/^scroll (\d+) px (up) the page$/) do |pixel, arg|
    page.execute_script("window.scrollBy(0,#{-pixel})")
  end

  When(/^scroll (bottom) of the page$/) do |arg|
    page.execute_script('window.scrollTo(0, document.body.scrollHeight)')
  end

  When(/^scroll (top) of the page$/) do |arg|
    page.execute_script('window.scrollTo(document.body.scrollHeight,0)')
  end

  When(/^focus to element by "([^"]*)" text$/) do |text|
    #TODO: capybara'nin kendi scroll_to metodu var. incele
    scroll_to(find(xpath: "//*[contains(text(), '#{text}')]"))
  end

  When(/^refresh the page$/) do
    page.evaluate_script('window.location.reload()')
  end

  When(/^switch to (last window)$/) do |arg|
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end

  When(/^switch to (first window)$/) do |arg|
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  end

  When(/^switch to window by "([^"]*)" title$/) do |window_title|
    switch_to_window { title == window_title }
  end

  When(/^resize window to (\d+) width (\d+) height$/) do |width, height|
    resize_to(width, height)
  end

  When(/^get window size$/) do
    size
  end

  When(/^close window$/) do
    close
  end

  When(/^get current url$/) do
    current_url
  end

  When(/^go back$/) do
    go_back
  end

  When(/^go forward$/) do
    go_forward
  end

  When(/^visit base page$/) do
    visit '/'
  end

  When(/^visit "([^"]*)" url$/) do |url|
    visit url
  end

  When(/^maximize window$/) do
    page.driver.browser.manage.window.maximize
  end

  When(/^accept alert$/) do
    page.driver.browser.switch_to.alert.accept
  end

  When(/^dismiss alert$/) do
    page.driver.browser.switch_to.alert.dismiss
  end

  When(/^get window title$/) do
    title
  end

rescue Exception => exception
  puts exception

end