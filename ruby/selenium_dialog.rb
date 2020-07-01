require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/dialog.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# [アラート] OK
driver.find_element(:id, "alert").click
sleep 1 
driver.switch_to.alert.accept
# [確認] Cancel
driver.find_element(:id, "confirm").click
sleep 1
driver.switch_to.alert.dismiss
# [入力] OK → [アラート] OK
driver.find_element(:id, "prompt").click
sleep 1
driver.switch_to.alert.send_keys("てすと")
driver.switch_to.alert.accept
sleep 1
driver.switch_to.alert.accept
sleep 3
driver.quit
