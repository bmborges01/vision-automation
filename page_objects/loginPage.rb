class LoginPage < SitePrism::Page
  set_url "/users/login"

  element :email_input, :id, "tEmail"
  element :password_input, :id, "tPassword"
  element :login_button, :css, "input[name='commit']"
  element :login_error_message, :css, "ul[class='errors'] li"
  element :signup_button, :css, "a[class='btn-blue createAccount']"
end
