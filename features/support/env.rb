require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'melomel'

Before do |scenario|
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to "http://localhost:4567/target/PomodoroMelomel.swf"
  Melomel.connect()
end

After do |scenario|
  @driver.quit() unless @driver.nil?
end