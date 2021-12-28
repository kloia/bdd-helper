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

```
BddHelper.configure do |config|
  config.timeout = 15  #(Default: 20)
  config.base_url = 'http://www.example.com'
  config.environment = 'staging'
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
    * `click "locator" button`


* Clicking a link (button can be found by its `id`, `text` or `title`)
    * `click "Registration" link`

**Fills**

* Filling an input the requested value (input can be found by its `name`, `id` or `label text`)
    * `fill "Phone Number" with "5555555555"`


* Filling an input with a random value (input can be found by its `name`, `id` or `label text`)
    * `fill "Email" with random email`

**Selects**

* Selecting an option from a dropdown
  (Dropdown can be found by its `name`, `id` or `label text` and it should be `select box`. option can be found by
  its `text`)
    * `select "Germany" from "Country" dropdown`

# NOTE: To auto-completion of the steps steps in bdd-helper with RubyMine or IntelliJ IDEs

* go to `Preferences` / `Languages & Frameworks` / `Cucumber`
* add `bdd-helper` to the list
