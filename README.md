# bdd-helper

`bdd-helper` is a Ruby gem to create Cucumber scenarios fastly. It...

* covers your needs
* avoids creating multiple and similar step definitions in projects
* combines most of the major actions like `clicking a button`, `filling an input` on browsers

# Installation

```
gem install bdd-helper
```

# Configuration

Configure `BddHelper` to suit your needs.
- timeout (Numeric = 20) : The maximum number of seconds to wait for asynchronous processes to finish.
- base_url (String nil) : This parameter specifies the default host of the test automation project that you developed and performs your operations through this host, must be a valid URL e.g. http://www.example.com

```
BddHelper.configure do |config|
  config.timeout = 15 
  config.base_url = 'http://www.example.com'
end
```

# Examples

**Assertions & Verifications**

* Verification of the visibility of a text on the page
    * `verify "bdd-helper" text is displayed`


* Verification of a selector's test
    * `verify "#username" element has "John" text`


* Verification of the status of a checkbox (checkbox can be found by its `label`, `name` or `id`)
    * `verify "Send SMS" checkbox is checked`

**Clicks**

* Clicking a button (button can be found by its `id`, `text` or `title`)
    * `click "login" button`


* Clicking a link (button can be found by its `id`, `text` or `title`)
    * `click "Registration" link`

**Fills**

* Filling an input the requested value (input can be found by its `name`, `id` or `label text`)
    * `fill "Phone Number" with "5555555555"`


* Filling an input with a random value (input can be found by its `name`, `id` or `label text`)
    * `fill "Email" with random email`
    * `fill "Phone Number" with random phone number`
    * `fill "First Name" with random first name`
    * `fill "Last Name" with random last name`
    * `fill "Address" with random address`
    * `fill "Zip Code" with random zip code`

**Selects**

* Selecting an option from a dropdown
  (Dropdown can be found by its `name`, `id` or `label text` and it should be `select box`. option can be found by
  its `text`)
    * `select "Germany" from "Country" dropdown`

**Browser**

* Navigate to URL defined in `BddHelper` configuration
    * `visit base page`


* Close current window, or the browser if no windows are left.
    * `close window`


* Switches to first or last window
    * `switch to last window`
    * `switch to first window`


* Scroll to bottom or top of the page
    * `scroll bottom of the page`
    * `scroll up of the page`
  
# NOTE: To auto-completion of the steps steps in bdd-helper with RubyMine or IntelliJ IDEs

* go to `Preferences` / `Languages & Frameworks` / `Cucumber`
* add `bdd-helper` to the list
