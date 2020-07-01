require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/wait.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# Waitのインスタンス(10秒)
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# 要素(id='msg')が表示状態になるまで待機
wait.until { driver.find_element(:id, "msg").displayed? }
puts driver.find_element(:id, "msg").text
# 要素(id='btn')が有効状態(クリック可能)になるまで待機
wait.until { driver.find_element(:id, "btn").enabled? }
puts driver.find_element(:id, "btn").attribute("value")
sleep 3
driver.quit
