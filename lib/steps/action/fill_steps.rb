begin

  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    fill_in(locator, with: text)
  end

  When(/^fill inputs:$/) do |table|
    table.raw.each { |raw| fill_in(raw[0], with: raw[1]) }
  end

  When(/^fill "([^"]*)" with random (first name)$/) do |locator, arg|
    fill_in(locator, with: Faker::Name.first_name)
  end

  When(/^fill "([^"]*)" with random (last name)$/) do |locator, arg|
    fill_in(locator, with: Faker::Name.last_name)
  end

  When(/^fill "([^"]*)" with random (email)$/) do |locator, arg|
    fill_in(locator, with: Faker::Internet.safe_email)
  end

  When(/^fill "([^"]*)" with random (phone number)$/) do |locator, arg|
    fill_in(locator, with: Array.new(7) { Array(0..9).sample }.join)
  end

  When(/^fill "([^"]*)" with random (address)$/) do |locator, arg|
    fill_in(locator, with: Faker::Address.full_address)
  end

  When(/^fill "([^"]*)" with random (zip code)$/) do |locator, arg|
    fill_in(locator, with: Faker::Address.zip_code)
  end

  When(/^clear "([^"]*)" input$/) do |locator|
    fill_in(locator, with: '', fill_options: { clear: :backspace })
  end

rescue StandardError => e
  puts e
end
