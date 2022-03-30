begin
  When(/^scroll (\d+) px (down) the page$/) do |pixel, arg|
    "
      This scrolls down the page by the given amount of pixel.
    "
    # E.g : And scroll 500 px down the page
    page.execute_script("window.scrollBy(0,#{pixel})")
  end

  When(/^scroll (\d+) px (up) the page$/) do |pixel, arg|
    "
      This scrolls up the page by the given amount of pixel.
    "
    # E.g : And scroll 500 px up the page
    page.execute_script("window.scrollBy(0,#{-pixel})")
  end

  When(/^scroll (bottom) of the page$/) do |arg|
    "
      This scrolls the page to the bottom
    "
    # E.g : And scroll bottom of the page
    page.execute_script('window.scrollTo(0, document.body.scrollHeight)')
  end

  When(/^scroll (top) of the page$/) do |arg|
    "
      This scrolls the page to the top
    "
    # E.g : And scroll top of the page
    page.execute_script('window.scrollTo(document.body.scrollHeight,0)')
  end

  When(/^focus to element by "([^"]*)" text$/) do |text|
    # E.g : And focus to element by "Agree Button" text
    scroll_to(find(xpath: "//*[contains(text(), '#{text}')]"))
  end

  When(/^refresh the page$/) do
    "
      This refreshes the current page
    "
    # E.g : And refresh the page
    page.evaluate_script('window.location.reload()')
  end

  When(/^open a (new window)$/) do |args|
    # E.g : And open a new window
    open_new_window(:window)
  end

  When(/^open a (new tab)$/) do |args|
    # E.g : And open a new tab
    open_new_window
  end

  When(/^switch to last (?:window|tab)$/) do 
    # E.g : And switch to last window
    # E.g : And switch to last tab
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end

  When(/^switch to first (?:window|tab)$/) do
    # E.g : And switch to first window
    # E.g : And switch to first tab
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  end

  When(/^switch to window by "([^"]*)" title$/) do |window_title|
    "
      Window title should be title of the target window
    "
    # E.g : And switch to window by "Welcome" title
    switch_to_window { title == window_title }
  end

  When(/^resize window to (\d+) width (\d+) height$/) do |width, height|
    "
      This resize to the current window by the given width and height
    "
    # E.g : And resize window to 1280 width 720 height
    page.driver.browser.manage.window.resize_to(width, height)
  end

  When(/^get window size$/) do
    "
       This gets the current window's size then defines it to the global variable
    "
    # E.g : And get window size
    $window_size = page.driver.browser.manage.window.size
  end

  When(/^close window$/) do
    "
      This closes the current window
    "
    # E.g : And close window
    page.driver.browser.close
  end

  When(/^get current url$/) do
    "
      This get full URL of the current page then defines it to the global variable
    "
    # E.g : And get current url
    $current_url = current_url
  end

  When(/^go back$/) do
    "
      This move back a single entry in the browser's history
    "
    # E.g : And go back
    go_back
  end

  When(/^go forward$/) do
    "
      This move forward a single entry in the browser's history
    "
    # E.g : And go forward
    go_forward
  end

  When(/^visit base page$/) do
    "
      Should configure base_url from bdd-helper config
    "
    # E.g : And visit base page
    visit BddHelper.base_url
  end

  When(/^visit "([^"]*)" url$/) do |url|
    "
      The URL can either be a relative URL or an absolute URL
    "
    # E.g : And visit "http://www.example.com" url
    visit url
  end

  When(/^visit relative url "([^"]*)"$/) do |url|
    "
      The URL can be a relative URL
    "
    # E.g : And visit relative url '/login'
    visit BddHelper.base_url + url
  end

  When(/^maximize window$/) do
    "
      This maximizes the current window
    "
    # E.g : And maximize window
    page.driver.browser.manage.window.maximize
  end

  When(/^accept alert$/) do
    # E.g : And accept alert
    page.driver.browser.switch_to.alert.accept
  end

  When(/^dismiss alert$/) do
    # E.g : And dismiss alert
    page.driver.browser.switch_to.alert.dismiss
  end

  When(/^get window title$/) do
    "
      This gets title of the current page then defines it to the global variable
    "
    # E.g : And get window title
    $page_title = title
  end

  When(/^switch to iframe by "([^"]*)" id$/) do |web_element|
    "
      Switches to the iframe with id.
    "
    #E.g. : And switch to iframe by "myIframe" id
    page.driver.browser.switch_to.frame(web_element)
  end

  When(/^switch to parent frame$/) do
    "
      Switches to the parent frame.
    "
    #E.g. : And switch to parent frame
    page.driver.browser.switch_to.parent_frame
  end

  When(/^switch to default content$/) do
    "
      Switches back to default content.
    "
    #E.g. : And switch to default content
    switch_to_frame(:top)
  end

rescue StandardError => e
  puts e
end

