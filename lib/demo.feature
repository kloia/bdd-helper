Feature: demo features


  Scenario: steps
    #homepage conf file varsa oradaki ya da nasıl yönetiliyorsa capybarada
    Given The homepage is opened

    #text ile click butona direk click ile yapıyordu bunu sanırım
    When User clicks on the "buttonName" button

    #text e click linktext ile
    When User clicks on the "text" text

    #açılır menüde bir module gitmek için hover over yapıp dropdownda click with link text
    When User navigate to "moduleName" under "module"

    #box name e key gönderme
    When User fills the "boxName"
    |username|
    #box key aynı cümle ile
    When User fills "inputName" inputBox with "value"

    #scroll yapmak için. JS executor ile yapabiliriz hazır yoksa
    When User scrolls down the page

    #checkbox checked
    When User checks the "checkboxName" checkbox

    #checkbox unchecked aynı şekilde
    When User uncheck the "checkboxName" checkbox

    #dropdown seçimi, burda select değilse hata fırlat yapabiliriz ya da select
    #olmayan durumlar için custom metod yazabiliriz.
    When User selects "optionsName" from the "dropboxName" dropbox

    #clear the inputbox
    When User clear the "inputBoxName" input box

    #enter a bas, bunu string ile herhangi bir tuşa da çevirebiliriz
    When User press the enters button

    #pop up dismiss js executor ile js popup dismiss
    When User dismiss the popup

    #refresh current page
    When User refreshes the page

    #url naivgation
    When User navigates to "someURL" page

    #hover over element, text ile bul hover et
    When User hover over the "elementName" button
    When User hover over the "elementName" text
    When User hover over the "elementName" menu

    #tablar arası geçiş yaparken title a göre geç diyebiliriz
    When User navigates the tab with "title" title

    #sayfada text var mı
    Then The "text" text should be displayed in the page
    Then The "text" text shouldn't be displayed in the page

    #element adıyla text var mı
    Then The "element" should include "text" text
    Then The "element" shouldn't include "text" text

    #button gösteriliyor mu
    Then The "buttonName" button should be displayed
    Then The "buttonName" button shouldn't be displayed

    #checkbox seçildi mi
    Then The "checkbox" checkbox should be selected
    Then The "checkbox" checkbox shouldn't be selected

    #aynı şekilde
    Then The "radioButtonName" radio button should be selected
    Then The "radioButtonName" radio button shouldn't be selected

    #page title
    Then The title should be displayed as "text"
    Then The title should contains "text"

    #dropdown option var mı
    Then The "dropdownName" should contain "option" option
