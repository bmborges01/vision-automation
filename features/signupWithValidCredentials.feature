Feature: Sign Up With Valid Credentials

Background:
  Given I am in the Decisiv Vision login page
  
Scenario: Sign up with valid credentials
  When I click on the Sign up button
  And The Signup page is displayed
  And I enter company name "bruno"
  And I enter first name "bruno"
  And I enter last name "bruno"
  And I enter email "bruno@bruno.com"
  And I enter phone number "12345678"
  And I click in the checkbox
  And I click in the submit button
  Then The Sign up success page is displayed
  And The messaged should be showed "Thank you for signing up with Decisiv!"
