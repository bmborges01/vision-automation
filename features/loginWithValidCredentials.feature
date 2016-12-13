Feature: Login with valid credentials

Background:
  Given I am in the Decisiv Vision login page


Scenario: Login with valid credentials
  When I enter the username "lauren+2@agilityfeat.com"
  And I enter the password "1Stretch"
  And I click on the Login button
  Then the home page is displayed
