Feature: demo features


  Scenario: steps
    #homepage conf file varsa oradaki ya da nasıl yönetiliyorsa capybarada
    Given The homepage is opened

    #text ile click butona direk click ile yapıyordu bunu sanırım
    When click "buttonName" button

    #text e click linktext ile
    When click "text" text

    #açılır menüde bir module gitmek için hover over yapıp dropdownda click with link text
    When click "link" under "menu"

    #box name e key gönderme
    When fill inputs:
      | key | value |
    #box key aynı cümle ile
    When fill "inputName" inputBox with "value"

    #scroll yapmak için. JS executor ile yapabiliriz hazır yoksa
    When scroll down the page

    #scroll yapmak için. JS executor ile yapabiliriz hazır yoksa
    When scroll up the page



    #checkbox checked
    When check "checkboxName" checkbox

    #checkbox unchecked aynı şekilde
    When uncheck "checkboxName" checkbox


    #dropdown seçimi, burda select değilse hata fırlat yapabiliriz ya da select
    #olmayan durumlar için custom metod yazabiliriz.
    When select "optionsName" from "dropboxName" dropdown

    #clear the inputbox
    When clear "inputBoxName" inputBox

    #enter a bas, bunu string ile herhangi bir tuşa da çevirebiliriz
    When press enter button

    #pop up dismiss js executor ile js popup dismiss
    When dismiss popup

    #refresh current page
    When refreshes the page

    #url naivgation
    When navigate to "someURL" page

    #hover over element, text ile bul hover et
    When hover over "elementName"

    #tablar arası geçiş yaparken title a göre geç diyebiliriz
    When navigate window with "title" title

    #last tab
    When navigate to last window

    #first tab
    When navigate to first window

    #sayfada text var mı
    Then verify "text" text is displayed
    Then verify "text" text is not displayed

#    #element adıyla text var mı
#    Then verify "element" includes "text" text
#    Then The "element" should not include "text" text

    #button gösteriliyor mu
    Then verify "buttonName" button is displayed
    Then verify "buttonName" button is not displayed


    #button gösteriliyor mu
    Then verify "buttonName" button is enabled
    Then verify "buttonName" button is disabled

    #checkbox seçildi mi
    Then verify "checkbox" checkbox is selected
    Then verify "checkbox" checkbox is not selected

    #aynı şekilde
    Then verify "radioButtonName" radio button is selected
    Then verify "radioButtonName" radio button is not selected

    #page title
    Then verify title is "text"
    Then verify title contains "text"

    #dropdown option var mı
    Then verify "dropdownName" dropdown contains "option" option
