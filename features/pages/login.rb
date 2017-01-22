class Login
  attr_accessor :SS_BTN_SUBMIT, :SS_TXT_LOGIN, :SS_TXT_PASS
  def initialize
    @SS_TXT_LOGIN  = './/input[@id="signin-email"]'
    @SS_TXT_PASS   = './/input[@id="signin-pw"]'
    @SS_BTN_SUBMIT = './/button[contains(@class,login-button)]'
  end
end