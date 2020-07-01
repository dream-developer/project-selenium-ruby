require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/modal.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# [1] モーダルを出すボタン
driver.find_element(:id, "btn").click
# [2] モーダルの入力欄
driver.find_element(:id, "inputfield").send_keys("てすと")
# [3] モーダルの入力後OKボタン
driver.find_element(:xpath, "/html/body/div[1]/div[3]/div/button").click
sleep 3
driver.quit
