require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/javascript.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
driver.save_screenshot("screenshot.png")
sleep 3
driver.quit
