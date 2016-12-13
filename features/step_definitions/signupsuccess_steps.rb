require_relative '../../page_objects/signupSuccessPage'

Then(/^The Sign up success page is displayed$/) do
  @signupsucces_page = SignupSuccessPage.new
  @signupsucces_page.load
  expect(@signupsucces_page.current_url)
end

Then (/^The messaged should be showed "([^"]*)"$/) do |message|
  expect(@signupsucces_page.thankyou_message.text).to include message
end
