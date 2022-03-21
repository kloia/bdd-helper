begin
  When(/^fill "([^"]*)" with "([^"]*)"$/) do |locator, text|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Name" with "John"
    FillInUtil.fill_text_field(locator, text)
  end

  When(/^fill inputs:$/) do |table|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill inputs:
    #      | username | test user |
    #      | password | pass123 |
    table.raw.each { |raw| FillInUtil.fill_text_field(raw[0], raw[1]) }
  end

  When(/^fill "([^"]*)" with random (first name)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "First Name" with random first name
    FillInUtil.fill_text_field(locator, Faker::Name.first_name)
  end

  When(/^fill "([^"]*)" with random (last name)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Last Name" with random last name
    FillInUtil.fill_text_field(locator, Faker::Name.last_name)
  end

  When(/^fill "([^"]*)" with random (email)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Email" with random email
    FillInUtil.fill_text_field(locator, Faker::Internet.safe_email)
  end

  When(/^fill "([^"]*)" with random (phone number)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Phone Number" with random phone number
    FillInUtil.fill_text_field(locator, Array.new(7) { Array(0..9).sample }.join)
  end

  When(/^fill "([^"]*)" with random (address)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Address" with random address
    FillInUtil.fill_text_field(locator, Faker::Address.full_address)
  end

  When(/^fill "([^"]*)" with random (zip code)$/) do |locator, arg|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And fill "Zip Code" with random zip code
    FillInUtil.fill_text_field(locator, Faker::Address.zip_code)
  end

  When(/^clear "([^"]*)" input$/) do |locator|
    "
      Fillable field can be name, id, placeholder or label text
    "
    # E.g : And clear "Name" input
    FillInUtil.clear_text_field(locator)
  end
rescue StandardError => e
  puts e
end
