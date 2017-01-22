require 'json'

When(/^reply to my test tweet$/) do
  msg = Messages.new
  xwait(msg.get_message)
  we = find(:xpath, msg.get_message)
  we.hover
  xclick(msg.get_reply_button)
  reply = "Test reply -please ignore- (#{Time.now})"
  File.open("reply.json","w") do |f|
    f.write(reply.to_json)
  end
  xset(msg.SS_TXT_REPLY, reply)
  xclick(msg.SS_BTN_SEND_REPLY)
end

Then(/^I will send a reply successfully$/) do
  msg = Messages.new
  dash = Dashboard.new
  xclick(msg.get_conversations)
  xwait(msg.get_pillow_talk)                                 #reply is present in puff pillow conversation window
  xclick(dash.get_menu_item('messages'))
  xwait(msg.get_reply_message)                               #reply is present on main message log after refresh
  expect(page).to have_selector(:xpath, msg.get_reply_message)
end

