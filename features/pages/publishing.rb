class Publishing
  attr_accessor :SS_BTN_SCHEDULE, :SS_BTN_SET_SCHEDULE
  def initialize
    @SS_BTN_SCHEDULE     = './/a[text()="Schedule Message"]'
    @SS_BTN_SET_SCHEDULE = './/span[text()="Schedule"]/..'
  end
  def select_date(num)
    return ".//div[text()=\"Post Time\"]/../..//div//table//tr//a[text()=\"#{num}\"]"
  end

  def get_scheduled_message
    message = ''
    File.open("message.json","r") do |f|
      message = message + f.readline
      message.gsub!('"','')
    end
    return ".//h2[@class=\"bucket-title\"]/../../section/article/div/span[text()=\"#{message}\"]"
  end
end