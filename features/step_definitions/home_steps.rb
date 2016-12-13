require_relative '../../page_objects/homePage'
require_relative '../../page_objects/AddCardPage'

Then (/^the home page is displayed$/) do
  @home = HomePage.new
  expect(@home.current_url)
end

When (/^I click in the view menu$/) do
  @home.view_menu.click
end

When (/^I click in the card menu$/) do
  @home.cardmenu.click
end

When (/^I click in the logout button$/) do
  @home.logout_button.click
end

When (/^I click the add card button$/) do
  @home.add_card.click
end

When (/^The add card page is displayed with the message "([^"]*)"$/) do |message|
  @addCard = AddCardPage.new
  expect(@addCard.add_card_title.text).to include message
end

When (/^I type a name for the card "([^"]*)"$/) do |cardname|
  @addCard.cardname_input.set cardname
end

When (/^I click in the save button$/) do
  @addCard.submit_card.click
end

When (/^I click in the selectable field button$/) do
  @addCard.card_field1.click
end

When (/^I select "([^"]*)"$/) do |fieldinput|
  @addCard.card_field_input.send_keys fieldinput, :enter
end

When (/^The card should be showed in the list "([^"]*)"$/) do |createdcard|
  expect(@home.created_card.text).to include createdcard
end
