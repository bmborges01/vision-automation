require_relative '../../page_objects/signupPage'

Then(/^The Signup page is displayed$/) do
  @signup_page = SignupPage.new
  @signup_page.load
  expect(@signup_page.current_url)
end

Then(/^I enter company name "([^"]*)"$/) do |companyname|
  @signup_page.company_input.set companyname
end

Then(/^I enter first name "([^"]*)"$/) do |firstname|
  @signup_page.firstname_input.set firstname
end

Then(/^I enter last name "([^"]*)"$/) do |lastname|
  @signup_page.lastname_input.set lastname
end

Then(/^I enter email "([^"]*)"$/) do |email|
  @signup_page.email_input.set email
end

Then(/^I enter phone number "([^"]*)"$/) do |phonenumber|
  @signup_page.phone_input.set phonenumber
end

Then(/^I click in the checkbox$/) do
  @signup_page.agreement_checkbox.click
end

Then(/^I click in the submit button$/) do
  @signup_page.submit_button.click
end

Then(/^The error message should be shown "([^"]*)"$/) do |error|
  expect(@signup_page.signup_error_message.text).to include error
end
