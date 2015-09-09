$basicurl = "https://www.opticsplanet.com"

Given /^Open homepage$/ do
  $driver.get "https://www.opticsplanet.com"
end

Then /^I wait for element ([^"]*) to appear$/ do |x|
  wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  wait.until { element = $driver.find_element :xpath => "#{x}" }
end

Then /^I wait for element ([^"]*) to appear and contain ([^"]*)$/ do |x,y|
  wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  wait.until { element = $driver.find_element :xpath => "#{x}[contains(text(),\'#{y}\')]" }
end

Given /^Search the cheapest item$/ do
  element = $driver.find_element :xpath => "//input[@class='e-site-search-block__input']"
  element.send_keys "s"
  element = $driver.find_element :xpath => "//span[@class='e-site-search-button__title']"
  element.click
  element = $driver.find_element :xpath => "//span[@class='e-dropdown-list-btn__text'][contains(text(),'Best')]"
  element.click
  sleep 2
  element = $driver.find_element :xpath => "//li[@class='e-select__item '][contains(text(),'Lowest Price')]"
  element.click
  sleep 3
  element = $driver.find_element :xpath => "//span[@class='grid__img']"
  element.click
end

Then /^I Add item to cart and proceed to checkout$/ do
  element = $driver.find_element :xpath => "//button[@class='variant-add-to-cart']"
  element.click
  sleep 1
  element = $driver.find_element :xpath => "//a[@id='cart-items-popup-checkout']"
  element.click
end

Then /^I Add item to cart$/ do
  element = $driver.find_element :xpath => "//button[@class='variant-add-to-cart']"
  element.click
end

And /^I change qty to ([^"]*)$/ do |qty|
  element = $driver.find_element :xpath => "//input[@id='qty-spinner_input_0']"
  element.clear()
  element.send_keys "#{qty}"
  element = $driver.find_element :xpath => "//span[@class='action-link js-update-quantity']"
  element.click
end

Then /^I click Check Out Now$/ do
  element = $driver.find_element :xpath => "//a[@class='variant-add-to-cart']"
  element.click
end

Then /^I set value for ([^"]*) to ([^"]*)$/ do |x,y|
  element = $driver.find_element :xpath => "#{x}"
  element.clear()
  element.send_keys "#{y}"
  end