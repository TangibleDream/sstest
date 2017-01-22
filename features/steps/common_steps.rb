When(/^I login to system$/) do
  visit('')
  lgn=Login.new
  page.driver.browser.manage.window.maximize
  xset(lgn.SS_TXT_LOGIN, '[removed]')
  xset(lgn.SS_TXT_PASS,  '[removed]')
  xclick(lgn.SS_BTN_SUBMIT)
end

When(/^I access the system message section$/) do
  dash = Dashboard.new
  xclick(dash.get_menu_item('messages'))
end

When(/^I access publishing$/) do
  dash = Dashboard.new
  xclick(dash.get_menu_item('publishing'))
end

When(/^I send a tweet$/) do
  mn = Main.new
  message = "Test message -please ignore- (#{Time.now})"
  File.open("message.json","w") do |f|
    f.write(message.to_json)
  end
  xset(mn.mytweet('Sprout Auto'), message)
  xclick(mn.SS_BTN_SEND_TWEET)
end