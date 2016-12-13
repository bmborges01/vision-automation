class SignupSuccessPage < SitePrism::Page
  set_url "/user/thanks"

  element :thankyou_message, :css, "div[class='thankYouMessage inputWrap-top inputWrap-bottom']"
end
