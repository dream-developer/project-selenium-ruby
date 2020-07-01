require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/menu.html"
# オプション指定
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--incognito')
options.add_argument('--window-size=500,300')
# オプションを渡す
driver = Selenium::WebDriver.for :chrome, options: options
driver.get(url)
sleep 3
driver.quit
