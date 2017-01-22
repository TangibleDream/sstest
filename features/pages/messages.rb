require 'json'
class Messages
  attr_accessor :SS_BTN_SEND_REPLY, :SS_TXT_REPLY
  def initialize
    @SS_TXT_REPLY      = '//article[@class="messagetext"]/div/div/textarea'
    @SS_BTN_SEND_REPLY = '//span[text()="Send"]/..'
  end
  def message_settings(setting)
    return ".//span[text()=\"#{setting}\"]/../../span[2]"
  end

  def get_message
    message = ''
    File.open("message.json","r") do |f|
      message = message + f.readline
      message.gsub!('"','')
    end
    return ".//span[text()=\"#{message}\"]"
  end

  def get_reply_message
    reply = ''
    File.open("reply.json","r") do |f|
      reply = reply + f.readline
      reply.gsub!('"','')
    end
    return ".//span[text()=\"#{reply}\"]"
  end

  def get_reply_button
    message = ''
    File.open("message.json","r") do |f|
      message = message + f.readline
      message.gsub!('"','')
    end
    return ".//span[text()=\"#{message}\"]/../../section/ul/li/a[@title=\"Reply\"]"
  end

  def get_conversations
    message = ''
    File.open("message.json","r") do |f|
      message = message + f.readline
      message.gsub!('"','')
    end
    return "//span[text()=\"#{message}\"]/../../a"
  end

  def get_pillow_talk  #sorry, had to do it
    reply = ''
    File.open("reply.json","r") do |f|
      reply = reply + f.readline
      reply.gsub!('"','')
    end
    return "//span[text()=\"View Conversation\"]/../../article/ul/li/article/span[text()=\"#{reply}\"]"
  end
end