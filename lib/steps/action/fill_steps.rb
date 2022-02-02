begin
  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Name" with "John"
    fill_in(locator, with: text, wait: BddHelper.timeout)
  end

  When(/^fill inputs:$/) do |table|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill inputs:
    #      | username | test user |
    #      | password | pass123 |
    table.raw.each { |raw| fill_in(raw[0], with: raw[1], wait: BddHelper.timeout) }
  end

  When(/^fill "([^"]*)" with random (first name)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "First Name" with random first name
    fill_in(locator, with: Faker::Name.first_name, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (last name)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Last Name" with random last name
    fill_in(locator, with: Faker::Name.last_name, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (email)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Email" with random email
    fill_in(locator, with: Faker::Internet.safe_email, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (phone number)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Phone Number" with random phone number
    fill_in(locator, with: Array.new(7) { Array(0..9).sample }.join, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (address)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Address" with random address
    fill_in(locator, with: Faker::Address.full_address, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (zip code)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Zip Code" with random zip code
    fill_in(locator, with: Faker::Address.zip_code, wait: BddHelper.timeout)
  end

  When(/^clear "([^"]*)" input$/) do |locator|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And clear "Name" input
    fill_in(locator, with: '', fill_options: { clear: :backspace }, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
