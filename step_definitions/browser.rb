require_relative '../../bdd-helper/step_definitions/env'
require_relative '../../bdd-helper/support/config'

And(/^refresh the page$/) do
  page.evaluate_script('window.location.reload()')
  sleep 1
  # location = current_url
  # page.driver.browser.navigate.refresh
  # sleep 1
  # current_url.should == location
end

When(/^navigate browser to "([^"]*)" url$/) do |url|
  visit url
  #current_url.should == url
end

# When(/^navigate browser to "([^"]*)" path$/) do |path|
#   visit $URL + path
#   current_url.should == $URL + path
# end

And(/^switch window to (first|last) opened$/) do |condition|
  if condition == 'first'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  elsif condition == 'last'
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
end

Then(/^user should redirected to "([^"]*)" path$/) do |path|
  page.should have_current_path(path, wait: $TIMEOUT)
end

# Given(/^user on main page$/) do
#   current_url.should == @url + '/'
# end

Then(/^alert message (should|should_not) be "([^"]*)" seçiniz."$/) do |condition, message|
  if condition == 'should'
    resp = page.driver.browser.switch_to.alert.text
    resp.should == message

  elsif condition == 'should_not'
    resp = page.driver.browser.switch_to.alert.text
    resp.should_not == message
  end
end
