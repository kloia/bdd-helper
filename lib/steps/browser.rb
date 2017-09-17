require_relative 'config'

include BaseConstants

And(/^refresh the page$/) do
  page.evaluate_script('window.location.reload()')
  sleep 1
end

When(/^navigate browser to "([^"]*)" url$/) do |url|
  visit url
end

And(/^switch window to (first|last) opened$/) do |condition|
  if condition == 'first'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  elsif condition == 'last'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
end

Then(/^user should redirected to "([^"]*)" path$/) do |path|
  page.should have_current_path(path, wait: $timeout)
end

Then(/^alert message (should|should_not) be "([^"]*)"$/) do |condition, message|
  if condition == 'should'
    resp = page.driver.browser.switch_to.alert.text
    resp.should == message

  elsif condition == 'should_not'
    resp = page.driver.browser.switch_to.alert.text
    resp.should_not == message
  end
end
