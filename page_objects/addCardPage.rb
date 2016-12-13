class AddCardPage < SitePrism::Page
  element :add_card_title, :css, "div[class='createHeader']"
  element :cardname_input, :id, "card_name"
  element :submit_card, :id, "submitNew"
  element :close_card, :id, "closeBtn"
  element :card_field1, :css, "div[class*='chosen-container']:nth-of-type(1)"
  element :card_field_input, :css, "div[class*='chosen-container-active'] input"
end
