 class BrowserUtilMethods

   def scroll_to(element)
     script = <<-JS
      arguments[0].scrollIntoView(true);
     JS
     page.execute_script(script, element.native)
     # Capybara.current_session.driver.browser.execute_script(script, element.native)
   end

 rescue StandardError => e
   puts e
  end
