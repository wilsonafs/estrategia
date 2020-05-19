require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "byebug"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 15
end
