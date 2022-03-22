Feature: demo features


  Scenario: steps
    ####################################
    # BROWSER UTIL
    When visit base page
    When visit "http://www.example.com" url
    When get current url
    When get window title

    When scroll top of the page
    When scroll bottom of the page
    When scroll 250 px up the page
    When scroll 250 px down the page

    When focus to element by "Agree Button" text

    When go back
    When go forward
    When refresh the page

    When accept alert
    When dismiss alert

    When open a new window
    When switch to first window
    When switch to last window
    When switch to first window
    When open a new tab
    When switch to first tab
    When switch to last tab
    When switch to window by "Welcome" title

    When close window
    When maximize window
    When get window size
    When resize window to 123 width 123 height
    # BROWSER UTIL
    ####################################

    ########################################################################

    ####################################
    # ASSERTION
    Then verify below texts are displayed:
      | Welcome   |
      | Thank you |
    Then verify below texts are not displayed:
      | Welcome   |
      | Thank you |
    Then verify "text" text is displayed
    Then verify "text" text is not displayed


    Then verify ".success-message" element has "Welcome" text
    Then verify ".fail-message" element has not "Welcome" text
    Then verify ".success-message" element contains "Welcome" text

    Then verify "#select-class-example legend" element starts with "Select" text by css
    Then verify "//*[@id='select-class-example']" element starts with "Select" text by xpath
    Then verify "#open-tab-example-div" element ends with "Tab" text by css
    Then verify "//*[@id='open-tab-example-div']" element ends with "Tab" text by xpath

    Then verify expected number of exact matches for element "[name='cars']" is 7
    Then verify expected number of minimum matches for element "[name='cars']" is 1
    Then verify expected number of maximum matches for element "[name='cars']" is 7
    Then verify expected number of matches found for element "[name='cars']" is between 1 and 7


    Then verify "Login" button is displayed
    Then verify "Sign In " button is not displayed

    Then verify "Login" button is enabled
    Then verify "Logout" button is disabled

    Then verify current url is "http:www.example.com"
    Then verify current path is "/login"

    Then verify page title is "Welcome"
    Then verify page title contains "Welcome"

    Then verify "Successful Login" alert message is displayed
    Then verify "Incorrect login or password." alert message is not displayed


    Then verify "Terms & Conditions" checkbox is checked
    Then verify "Terms & Conditions" checkbox is unchecked

    Then verify "Male" radio button is selected
    Then verify "Female" radio button is not selected
    Then verify "cars" dropdown contains "audi" option
    Then verify "cars" dropdown does not contain "audi" option
    Then verify "cars" dropdown contains the options below:
      | au |
      | bm |

    Then verify "audi" options is selected from "cars" dropdown
    Then verify "audi" options is not selected from "cars" dropdown
    # ASSERTION
    ####################################

    ########################################################################

    ####################################
    # ACTION
    When fill "Username" with "value"
    When fill "First Name" with random first name
    When fill "Last Name" with random last name
    When fill "Email" with random email
    When fill "Phone Number" with random phone number
    When fill "Address" with random address
    When fill "Zip Code" with random zip code

    When fill inputs:
      | username   | test user |
      | password   | pas123    |

    When click "Contact Us" link
    When click "Sign In" button

    When check "Terms & Conditions" checkbox
    When uncheck "Privacy Policy" checkbox

    When choose "Male" radio button

    When clear "First Name" input
    When select "audi" from "cars" dropdown

    When press "#login" enter
    When press "#username" delete
    When press ".list-selector" down
    When press ".list-selector" up
    When press ".list-selector" left
    When press ".list-selector" right

    When click "Logout" under ".account-menu"
    When click "Logout" item 0 under ".account-menu" menu item 0

    When hover over "Account"
    # ACTION
    ####################################

    ########################################################################

    ####################################
    # CUSTOMIZED
    When hover to "css" value ".list_item" web element
    When wait 2 seconds
    When generate 10 char random string and type into type "css" value ".username"
    When execute javascript code "window.location.reload()"
    # CUSTOMIZED
    ####################################