require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/javascript.html"
# headlessモードにする
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
driver = Selenium::WebDriver.for :chrome, options: options
driver.get(url)
# ウィンドウサイズをブラウザ表示域にする
w = driver.execute_script("return document.body.scrollWidth;")
h = driver.execute_script("return document.body.scrollHeight;")
driver.manage.window.resize_to(w, h)
driver.save_screenshot("screenshot_full.png")
sleep 3
driver.quit
