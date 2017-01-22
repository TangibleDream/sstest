require 'json'

When(/^I access twitter on system$/) do
  xclick('.//span[text()="Compose"]')
end

Then(/^I will find my test tweet$/) do
  msg = Messages.new
  expect(page).to have_selector(:xpath, msg.get_message)
end

When(/^I observe my sent tweets$/) do
  msg = Messages.new
  xset(msg.message_settings('Hide completed items'), false)
  xset(msg.message_settings('Sent Messages'), true)
end