require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/menu.html"
# Chrome のドライバを取得
driver = Selenium::WebDriver.for :chrome
# urlを開く
driver.get(url)
sleep 3
# 終了する
driver.quit
