Feature: demo features


  Scenario: steps
    ####################################
    # BROWSER UTIL
    When visit base page
    When visit "123" url
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
    When switch to window by "title" title

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
      | abc |
      | def |
    Then verify below texts are not displayed:
      | abc |
      | def |
    Then verify "text" text is displayed
    Then verify "text" text is not displayed


    Then verify "css_selector" element has "bla bla" text
    Then verify "css_selector" element has not "bla bla" text

    Then verify "bla bla" button is displayed
    Then verify "bla bla" button is not displayed

    Then verify "bla bla" button is enabled
    Then verify "bla bla" button is disabled

    Then verify current url is "blabla"
    Then verify current path is "/blabla"

    Then verify page title is "text"
    Then verify page title contains "text"

    Then verify "bla bla" alert message is displayed
    Then verify "bla bla" alert message is not displayed


    Then verify "checkbox" checkbox is checked
    Then verify "checkbox" checkbox is unchecked

    Then verify "radioButtonName" radio button is selected
    Then verify "radioButtonName" radio button is not selected
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
    When fill "inputName" with "value"
    When fill "inputName" with random first name
    When fill "inputName" with random last name
    When fill "inputName" with random email
    When fill "inputName" with random phone number
    When fill "inputName" with random address
    When fill "inputName" with random zip code

    When fill inputs:
      | name    | bla    |
      | surname | blabla |

    When click "linkName" link
    When click "buttonName" button

    When check "blabla" checkbox
    When uncheck "blabla" checkbox

    When choose "Female" radio button

    When clear "inputBoxName" input
    When select "optionsName" from "dropboxName" dropdown

    When press "blabla locator" enter
    When press "blabla locator" delete
    When press "blabla locator" down
    When press "blabla locator" up
    When press "blabla locator" left
    When press "blabla locator" right


    When click "link" under "menu"
    When click "link" item 0 under "menu" menu item 0

    When hover over "text"

        # ACTION
    ####################################


     ####################################
    # CUSTOMIZED

    When hover to "selector type" value "web element" web element
    When wait "time" seconds
    When generate "count" char random string and type into type "selector type" value "web element"
    When execute javascript code "code"

        # CUSTOMIZED
     ####################################


