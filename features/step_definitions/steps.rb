# $basicurl = "https://www.toysrus.com"

Then /^Click the category ([^"]*)$/ do |cat|
  $driver.get "https://www.toysrus.com"
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"#{cat}\"]"
  element.click
  sleep 5
end

Then /^Click the subcategory ([^"]*)$/ do |subCat|
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a [text() = \"#{subCat}\"]"
  element.click
  sleep 5
  end

Then /^Pick the ([^"]*) item$/ do |itemNumber|
  element = $driver.find_element :xpath => "(//img[@class='swatchProdImg'])[#{itemNumber}]"
  element.click
  sleep 5
end

Then /^Add item to cart$/ do
  element = $driver.find_element :id => "cartAddition"
  element.click
  sleep 5
end

Then /^Verify that ([^"]*) item was added to the cart$/ do |amount|
  $driver.find_element :xpath => "//span[@class='cartItemCount'][text() = [\"#{amount}\"]"
  sleep 5
end

Then /^Remove item from the Cart$/ do
  element = $driver.find_element :xpath => "//a[@class='cartButton']"
  element.click
  sleep 5
  element = $driver.find_element :id => "remove-1"
  element.click
  sleep 5
end

Then /^I LogIn in Facebook$/ do
  driver = $driver
  driver.get "https://www.facebook.com"

  element = driver.find_element :id => "email"
  element.send_keys "o.khroniuk@gmail.com"

  element = driver.find_element :id => "pass"
  element.send_keys "AucK28maxe93hf08i"
  element = driver.find_element :id => "loginbutton"
  element.click
  sleep 5
end


Then /^Navigate back$/ do
  $driver.navigate.back
  sleep 5
end

Then /^Go back to the home page$/ do
  element = $driver.find_element :xpath => "//div[@id='hdrLogo']/a"
  element.click
  sleep 5
end

Then /^Click the link ([^"]*)$/ do |link|
  $driver.get "https://www.toysrus.com"
  element = $driver.find_element :xpath => "//a[@class='liText'][text()=\'#{link}\']"
  element.click
  sleep 5
end

Then /^Verify navigation ([^"]*)$/ do |nav|
  $driver.find_element :xpath => "//h2[@class='twd_h5']/a[text()=\"#{nav}\"]"
end

Then /^LogOut$/ do

end