class Main
  attr_accessor :SS_BTN_SEND_TWEET, :SS_ERR_NO_STATUS
  def initialize
    @SS_BTN_SEND_TWEET = './/span[text()="Send"]/..'
    @SS_ERR_NO_STATUS  = './/div[text()="Your status is blank. Please enter a message."]'
  end
  def mytweet(user)
    return "//div[text()=\"#{user}\"]/../../../../../article/div/div/textarea"
  end
end