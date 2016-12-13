
Feature: Sign Up With Invalid Credentials

  Background:
    Given I am in the Decisiv Vision login page

  Scenario: Sign up with empty company name field
      When I click on the Sign up button
      And The Signup page is displayed
      And I enter first name "bruno"
      And I enter last name "borges"
      And I enter email "bruno@bruno.com"
      And I enter phone number "12345678"
      And I click in the checkbox
      And I click in the submit button
      And The error message should be shown "Account Name can't be blank"

  Scenario: Sign up with empty first name field
      When I click on the Sign up button
      And The Signup page is displayed
      And I enter company name "brunos comp"
      And I enter last name "borges"
      And I enter email "bruno@bruno.com"
      And I enter phone number "12345678"
      And I click in the checkbox
      And I click in the submit button
      And The error message should be shown "Representative First Name can't be blank"

  Scenario: Sign up with empty last name field
      When I click on the Sign up button
      And The Signup page is displayed
      And I enter company name "brunos comp"
      And I enter first name "bruno"
      And I enter email "bruno@bruno.com"
      And I enter phone number "12345678"
      And I click in the checkbox
      And I click in the submit button
      And The error message should be shown "Representative Last Name can't be blank"

   Scenario: Sign up with empty email field
        When I click on the Sign up button
        And The Signup page is displayed
        And I enter company name "brunos comp"
        And I enter first name "bruno"
        And I enter last name "borges"
        And I enter phone number "12345678"
        And I click in the checkbox
        And I click in the submit button
        And The error message should be shown "Representative Email can't be blank"

      Scenario: Sign up with empty phone field
          When I click on the Sign up button
          And The Signup page is displayed
          And I enter company name "brunos comp"
          And I enter first name "bruno"
          And I enter last name "borges"
          And I enter email "bruno@email.com"
          And I click in the checkbox
          And I click in the submit button
          And The error message should be shown "Representative Phone Number can't be blank"

      Scenario: Sign up with empty email field
          When I click on the Sign up button
          And The Signup page is displayed
          And I enter company name "brunos comp"
          And I enter first name "bruno"
          And I enter last name "borges"
          And I enter phone number "12345678"
          And I click in the checkbox
          And I click in the submit button
          And The error message should be shown "Representative Email can't be blank"

      Scenario: Sign up with email already registered
          When I click on the Sign up button
          And The Signup page is displayed
          And I enter company name "brunos comp"
          And I enter first name "bruno"
          And I enter last name "borges"
          And I enter phone number "12345678"
          And I enter email "lauren+2@agilityfeat.com"
          And I click in the checkbox
          And I click in the submit button
          And The error message should be shown "Email address has already been taken"

      Scenario: Sign up with email already registered
          When I click on the Sign up button
          And The Signup page is displayed
          And I enter company name "brunos comp"
          And I enter first name "bruno"
          And I enter last name "borges"
          And I enter phone number "12345678"
          And I enter email "bruno@email.com"
          And I click in the submit button
          And The error message should be shown "Subscription Agreement must be accepted"
