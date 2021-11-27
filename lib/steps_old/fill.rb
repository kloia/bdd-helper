begin

And(/^fill input boxes with these values:$/) do |table|
  values = table.raw
  values.each {|raw| fill_in(raw[0], with: raw[1])}
end

Then(/^fill type "([^"]*)" value "([^"]*)" web element with "([^"]*)"$/) do |web_element_type, web_element, value|
  # E.g: fill type "id" value "mobilePhone" web element with "5555555555"
  page.should have_selector(:"#{web_element_type}", web_element, wait: $timeout)
  find(:"#{web_element_type}", web_element).set(value)
end

And(/^fill "([^"]*)" with random (email|password|name|gsm)$/) do |field, condition|
  def generate_code(number, condition)
    if condition == 'email'
      charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
      Array.new(number) {charset.sample}.join + "@gmail.com"

    elsif condition == 'password'
      charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
      Array.new(number) {charset.sample}.join

    elsif condition == 'name'
      charset = Array('A'..'Z') + Array('a'..'z')
      Array.new(number) {charset.sample}.join

    elsif condition == 'gsm'
      charset = Array(0..9)
      Array.new(7) {charset.sample}.join
    end
  end

  var = generate_code(10, condition)
  fill_in(field, with: var)
end

rescue Exception => exception
  puts exception

end