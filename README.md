<div>
  <a href="https://img.shields.io/github/stars/kloia/bdd-helper/stargazers">
    <img src="https://img.shields.io/github/stars/kloia/bdd-helper?style=social" alt="stargazers"/>
  </a>

[comment]: <> (  <a href="https://github.com/kloia/bdd-helper/releases">)

[comment]: <> (    <img src="https://img.shields.io/github/release/kloia/bdd-helper.svg" alt="releases"/>)

[comment]: <> (  </a>)
  <a href="https://rubygems.org/gems/bdd-helper">
    <img src="https://img.shields.io/gem/v/bdd-helper?include_prereleases" alt="gem_release"/>
  </a>
  <a href="https://rubygems.org/gems/bdd-helper">
    <img src="https://img.shields.io/gem/dt/bdd-helper" alt="downloads"/>
  </a>
</div>

<img src="resources/bdd-helper-logo-white.jpg" height="200" width="313" alt="bdd-helper"/>

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

- timeout (Numeric = 20)  : The maximum number of seconds to wait for asynchronous processes to finish.
- base_url (String nil)   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: This parameter specifies the default host of the test
  automation project that you developed and performs your operations through this host, must be a valid URL
  e.g. http://www.example.com

```
BddHelper.configure do |config|
  config.timeout  = 15 
  config.base_url = 'http://www.example.com'
end
```

# Global Context

You add GlobalContext.new to Before method in your cucumber hooks. It resets global variables to default values for each
scenario in an execution.

- $current_url &nbsp;&nbsp;&nbsp;: The current url is assigned in the `get current url` step
- $window_size  : The window size is assigned in the `get window size` step
- $page_title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : The page title is assigned in the `get window title` step

```
Before do |scenario|
  GlobalContext.new
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
