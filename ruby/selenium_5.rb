require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/menu.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# テキストリンクがCoffeeの要素を取得しクリック
element = driver.find_element(:link_text, "Coffee")
element.click
sleep 1
# ページ更新
driver.navigate.refresh
sleep 1
# 前に戻る
driver.navigate.back
sleep 1
# 次に進む
driver.navigate.forward
puts driver.current_url
sleep 3
driver.quit
