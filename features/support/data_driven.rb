require 'selenium-webdriver'
require 'rspec'
require 'csv'
include RSpec::Matchers

def setup
  $driver = Selenium::WebDriver.for :firefox
end

def teardown
  $driver.quit
end

def run
  setup
  yield
  teardown
end