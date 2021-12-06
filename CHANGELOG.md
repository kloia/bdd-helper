CHANGES IN VERSION 1.0 (FROM 0.0.3)
===================================

#### General
 * Step names has changed.
 * Added more actions and assertions with new steps.
 * Some steps have been removed.
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
   

**Note:** What needs to be done to support the new version in your project:
* You should copy `migrate-to-1.0.sh` file in etc folder to your project main directory.
* Then run shell script in your project directory. However, don't forget to check if the file is executable with the command `ls -la`. If not, run `chmod +x migrate-to-1.0.sh`.
* You should check your feature file whether it is updated for new step definitions.

#### Unsupported steps
 ```
page should contain "web_element_type" "web_element" web element
page should_not contain "web_element_type" "web_element" web element
validation message should be "expected_message" about "element_value" field
check type "web_element_type" value "web_element" web element
click type "web_element_type" value "web_element" web element
fill type "web_element_type" value "web_element" web element with "value"
 ```