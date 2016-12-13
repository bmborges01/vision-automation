class SignupPage < SitePrism::Page
  set_url "/companies/new"

  element :company_input, :id, "tName"
  element :firstname_input, :id, "tRepresentativeFirstName"
  element :lastname_input, :id, "tRepresentativeLastName"
  element :email_input, :id, "tEmail"
  element :phone_input, :id, "tNumber"
  element :agreement_checkbox, :id, "company_subscription_agreement"
  element :submit_button, :css, "input[class='loginBtn']"
  element :signup_error_message, :css, "ul[class='messageTerms'] li"
end
