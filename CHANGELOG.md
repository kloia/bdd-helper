CHANGES IN VERSION 1.0 (FROM 0.0.3)
===================================

#### General

* Step definitions have changed.
* Added more browser actions and assertion steps.
* Some steps have been removed. (Please check `Unsupported Steps` section at the bottom)
* Added bdd-helper configure
* Update dependencies:

 ```
   -- 'capybara', '~> 3.36' 
   -- 'cucumber', '~> 7.1' 
   -- rspec', '~> 4.0', '>= 4.0.3' 
   -- 'selenium-webdriver', '~> 4.0', '>= 4.0.3' 
  ```

* Add dependencies:

 ```
  -- 'faker', '~> 2.19
 ```

# NOTE: What needs to be done to support the new version in your project?

* Copy `migrate-to-1.0.sh` file in `etc` directory to your project's main directory.
* Run shell script in your project directory. However, don't forget to check if the file is executable with the
  command `ls -la`. If not, run `chmod +x migrate-to-1.0.sh`.
* Check the `feature` files in your project whether it is updated for new step definitions.

#### Unsupported Steps

 ```
page should contain "web_element_type" "web_element" web element

page should_not contain "web_element_type" "web_element" web element

validation message should be "expected_message" about "element_value" field

check type "web_element_type" value "web_element" web element

click type "web_element_type" value "web_element" web element

fill type "web_element_type" value "web_element" web element with "value"
 ```