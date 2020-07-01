require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/multiclass.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# multiclass.html にアクセス
elements = driver.find_elements(:css, ".want.need")
for element in elements
  puts element.text
end
sleep 3
driver.quit
