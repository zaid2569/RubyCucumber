require_relative 'Base'
class Paypal_site < Base
  set_url ""
  set_url_matcher /www\.paypal(.*?)\.com/
  element :login_button, "#ul-btn"
  element :login_button, "a", :text => "Log In"
  #By CSS
  element :userid, "input#email" # By ID
  element :userid, "input.validateEmpty" # By Class
  element :userid, "input" # By Tag
  element :userid, "input[placeholder='Email or mobile number']"
  element :login_button, "a", :text => "Log In"
  element :password, "#password"
  element :heading, "h2.pulloutHeadline"
  element :note,"p.pulloutpara"
end