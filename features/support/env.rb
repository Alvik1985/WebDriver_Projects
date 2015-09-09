require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'

$driver = Selenium::WebDriver.for :firefox

Before do
  $driver.get  $basicurl
  # $driver.manage.window.maximize
end

After do
  $driver.close
end

$driver.manage.timeouts.implicit_wait  = 15

