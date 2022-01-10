begin
  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    # E.g : fill "Name" with "John"
    # E.g : fill_in "Name", with: "John", wait: BddHelper.timeout ===>> to fill fillable field
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: text, wait: BddHelper.timeout)
  end

  When(/^fill inputs:$/) do |table|
    # E.g : fill inputs:
    #      | locator | text       |
    #      | Username | test user |
    # E.g : table.raw.each { |raw| fill_in('Username', with: "test user", wait: BddHelper.timeout) } ===>> to fill all fillable field in the table
    # fillable field can be name, id, placeholder or label text
    table.raw.each { |raw| fill_in(raw[0], with: raw[1], wait: BddHelper.timeout) }
  end

  When(/^fill "([^"]*)" with random (first name)$/) do |locator, arg|
    # E.g : fill "First Name" with random first name
    # E.g : fill_in "First Name", with: Faker::Name.first_name, wait: BddHelper.timeout ===>> to fill random first name
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Faker::Name.first_name, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (last name)$/) do |locator, arg|
    # E.g : fill "Last Name" with random last name
    # E.g : fill_in "Last Name", with: Faker::Name.last_name, wait: BddHelper.timeout ====> to fill random last name
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Faker::Name.last_name, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (email)$/) do |locator, arg|
    # E.g : fill "Email" with random email
    # E.g : fill_in "Email", with: Faker::Internet.safe_email, wait: BddHelper.timeout ===>> to fill random email
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Faker::Internet.safe_email, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (phone number)$/) do |locator, arg|
    # E.g : fill "Phone Number" with random phone number
    # E.g : fill_in "Email", with: Array.new(7) { Array(0..9).sample }.join, wait: BddHelper.timeout) ===>> to fill random phone number
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Array.new(7) { Array(0..9).sample }.join, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (address)$/) do |locator, arg|
    # E.g : fill "Address" with random address
    # E.g : fill_in "Address", with: Faker::Address.full_address, wait: BddHelper.timeout ===>> to fill random address
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Faker::Address.full_address, wait: BddHelper.timeout)
  end

  When(/^fill "([^"]*)" with random (zip code)$/) do |locator, arg|
    # E.g : fill "Zip Code" with random zip code
    # E.g : fill_in "Zip Code", with: Faker::Address.zip_code, wait: BddHelper.timeout ===>> to fill random zip code
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: Faker::Address.zip_code, wait: BddHelper.timeout)
  end

  When(/^clear "([^"]*)" input$/) do |locator|
    # E.g : clear "Name" input
    # E.g : fill_in "Name", with: '', fill_options: { clear: :backspace }, wait: BddHelper.timeout ===>> to clear fillable field
    # fillable field can be name, id, placeholder or label text
    fill_in(locator, with: '', fill_options: { clear: :backspace }, wait: BddHelper.timeout)
  end
rescue StandardError => e
  puts e
end
