Feature: Login with invalid credentials

Background:
  Given I am in the Decisiv Vision login page


Scenario: Login with invalid password
  When I enter the username "lauren+2@agilityfeat.com"
  And I enter the password "1234"
  And I click on the Login button
  Then i see the error message "Invalid Email or Password"

Scenario: Login with invalid username
  When I enter the username "bruno.borges@alow.com"
  And I enter the password "1Stretch"
  And I click on the Login button
  Then i see the error message "Invalid email or password"

Scenario: Login with invalid username and password
  When I enter the username "bruno.borges@alow.com"
  And I enter the password "1234"
  And I click on the Login button
  Then i see the error message "Invalid email or password"
