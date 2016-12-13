require_relative '../../page_objects/loginPage'

Given(/^I am in the Decisiv Vision login page$/) do
  @login_page = LoginPage.new
  @login_page.load
end

When(/^I enter the username "([^"]*)"$/) do |email|
  @login_page.email_input.set email
end

When (/^I enter the password "([^"]*)"$/) do |password|
  @login_page.password_input.set password
end

When (/^I click on the Login button$/) do
  @login_page.login_button.click
end

When (/^I click on the Sign up button$/) do
  @login_page.signup_button.click
end

Then (/^i see the error message "([^"]*)"$/) do |error|
  expect(@login_page.current_url).to end_with "/users/login"
  expect(@login_page.login_error_message.text).to include error
end
