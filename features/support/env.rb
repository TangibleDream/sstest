require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
load('features/support/support_steps.rb')


Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  case get_browser
    when 'chrome'
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    when 'firefox'
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    when 'ie'
      Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    else
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
  end
Capybara.app_host = get_host
