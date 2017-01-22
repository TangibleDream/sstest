When(/^I schedule a future tweet$/) do
  pub = Publishing.new
  xclick(pub.SS_BTN_SCHEDULE)
  mn = Main.new
  message = "Test message -please ignore- (#{Time.now})"
  File.open("message.json","w") do |f|
    f.write(message.to_json)
  end
  xset(mn.mytweet('Sprout Auto'), message)
  xclick(pub.select_date(Time.now.day))
  xclick(pub.SS_BTN_SET_SCHEDULE)
end

Then(/^I will see it as an upcoming message$/) do
  pub = Publishing.new
  xwait(pub.get_scheduled_message)
end

Then(/^If I wait for it to send$/) do     #decided to automate a six minute delay to see the tweet hit the main log as scheduled
  sleep(6 * 60)
end

Then(/^I will find my scheduled test tweet$/) do
  dash = Dashboard.new
  msg = Messages.new
  xclick(dash.get_menu_item('messages'))
  xset(msg.message_settings('Hide completed items'), false)
  xset(msg.message_settings('Sent Messages'), true)
  expect(page).to have_selector(:xpath, msg.get_message)
end