Feature: demo features

  #Capybara konfigurasyonu bdd-helper'da yaptirmaliyiz url vs gormesi icin ama nasil?

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

    When switch to last window
    When switch to first window
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
    Then verify "cars" dropdown contains below options:
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

    #bunun icin faker kullanalim, hangi random value'lari kullanacagimiza karar verelim
    When fill "inputName" with random email|phoneNumber|name|blabla...
    When fill inputs:
      | name    | bla    |
      | surname | blabla |

    When click "linkName" link
    When click "buttonName" button

    When check "blabla" checkbox
    When uncheck "blabla" checkbox

    When choose "Female" radio button

    When clear "inputBoxName" input

    #dropdown seçimi, burda select değilse hata fırlat yapabiliriz ya da select
    #olmayan durumlar için custom metod yazabiliriz.
    When select "optionsName" from "dropboxName" dropdown

    #enter a bas, bunu string ile herhangi bir tuşa da çevirebiliriz
    When press "blabla locator" enter
    # ACTION
    ####################################

    #açılır menüde bir module gitmek için hover over yapıp dropdownda click with link text
    When click "link" under "menu"

    #hover over element, text ile bul hover et
    When hover over "elementName"