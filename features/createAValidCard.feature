Feature: Create a Valid Card

Background:
  Given I am in the Decisiv Vision login page

@wip
Scenario: Create a Valid card
  When I enter the username "lauren+2@agilityfeat.com"
  And I enter the password "1Stretch"
  And I click on the Login button
  And the home page is displayed
  And I click in the view menu
  And I click in the card menu
  And I click the add card button
  And The add card page is displayed with the message "Select fields by searching or typing to create your custom view."
  And I click in the selectable field button
  And I select "Created"
  And I type a name for the card "auto-test"
  And I click in the save button
  Then The card should be showed in the list "auto-test"
