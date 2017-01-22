When(/^I send an empty tweet$/) do
  mn = Main.new
  xclick(mn.SS_BTN_SEND_TWEET)
end

Then(/^I will get a reject message for missing a status$/) do
  mn = Main.new
  xwait(mn.SS_ERR_NO_STATUS)
end