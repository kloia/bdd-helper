Feature: demo features


  Scenario: steps
    Given The homepage is opened
    When User clicks on the "buttonName" button
    When User clicks on the "text" text
    When User navigate to "moduleName" under "module"
    When User fills the "boxName"
    |username|
    When User fills "inputName" inputBox with "value"
    When User scrolls down the page
    When User checks the "checkboxName" checkbox
    When User uncheck the "checkboxName" checkbox
    When User selects "optionsName" from the "dropboxName" dropbox
    When User dismiss the popup
    When User refreshes the page
    When User navigates to "someURL" page
    When User hover over the "elementName" button
    When User hover over the "elementName" text
    When User hover over the "elementName" menu
    When User navigates the tab with "title" title
    Then The "text" text should be displayed
    Then The "text" text shouldn't be displayed
    Then The "buttonName" button should be displayed
    Then The "buttonName" button shouldn't be displayed
    Then The "checkbox" checkbox should be selected
    Then The "checkbox" checkbox shouldn't be selected
    Then The "radioButtonName" radio button should be selected
    Then The "radioButtonName" radio button shouldn't be selected
    Then The title should be displayed as "text"
    Then The title should contains "text"
    Then The "elementName" should contains "text"
    Then The "dropdownName" should contain "option" option
