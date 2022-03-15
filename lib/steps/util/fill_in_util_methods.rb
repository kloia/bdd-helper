class FillInUtilMethods

  def self.clear_text_field(locator)
    fill_in(locator, with: '', fill_options: { clear: :backspace }, wait: BddHelper.timeout)
  end

  def self.fill_text_field(locator, text)
    clear_text_field(locator)
    fill_in(locator, with: text, wait: BddHelper.timeout)
  end

end

