begin
  When(/^scroll (\d+) px (down) the page$/) do |pixel, arg|
    # E.g : scroll 500 px down the page
    # E.g : page.execute_script("window.scrollBy(0,50)")
    page.execute_script("window.scrollBy(0,#{pixel})")
  end

  When(/^scroll (\d+) px (up) the page$/) do |pixel, arg|
    # E.g : scroll 500 px up the page
    # E.g : page.execute_script("window.scrollBy(0,-50)")
    page.execute_script("window.scrollBy(0,#{-pixel})")
  end

  When(/^scroll (bottom) of the page$/) do |arg|
    # E.g : scroll bottom of the page
    page.execute_script('window.scrollTo(0, document.body.scrollHeight)')
  end

  When(/^scroll (top) of the page$/) do |arg|
    # E.g : scroll top of the page
    page.execute_script('window.scrollTo(document.body.scrollHeight,0)')
  end

  When(/^focus to element by "([^"]*)" text$/) do |text|
    # E.g : focus to element by "Welcome" text
    # E.g : scroll_to(find(xpath: "//*[contains(text(), 'Welcome')]"))
    scroll_to(find(xpath: "//*[contains(text(), '#{text}')]"))
  end

  When(/^refresh the page$/) do
    page.evaluate_script('window.location.reload()')
  end

  When(/^open a (new window)$/) do |args|
    open_new_window(:window)
  end

  When(/^open a (new tab)$/) do |args|
    open_new_window
  end

  When(/^switch to (last window|last tab)$/) do |arg|
    # E.g : switch to last window
    # E.g : switch to last tab
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end

  When(/^switch to (first window|first tab)$/) do |arg|
    # E.g : switch to first window
    # E.g : switch to first tab
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  end

  When(/^switch to window by "([^"]*)" title$/) do |window_title|
    # E.g : switch to window by "Welcome" title
    # E.g : switch_to_window { title == "Welcome" }
    switch_to_window { title == window_title }
  end

  When(/^resize window to (\d+) width (\d+) height$/) do |width, height|
    # E.g : resize window to 1280 width 720 height
    # E.g : resize_to(1280, 720)
    page.driver.browser.manage.window.resize_to(width, height)
  end

  When(/^get window size$/) do
    page.driver.browser.manage.window.size
  end

  When(/^close window$/) do
    page.driver.browser.close
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
    visit BddHelper.base_url
  end

  When(/^visit "([^"]*)" url$/) do |url|
    visit url
  end

  When(/^visit relative url "([^"]*)"$/) do |url|
    visit BddHelper.base_url + url
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

rescue StandardError => e
  puts e
end

