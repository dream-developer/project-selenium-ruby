require 'selenium-webdriver'
url_menu = "file:///C:/Users/writer/study_work/html/menu.html"
url_coffee = "file:///C:/Users/writer/study_work/html/coffee.html"
driver = Selenium::WebDriver.for :chrome
# [1] このタブは1つめなので driver.window_handles[0]
driver.get(url_menu)
sleep 1
# [2] このタブは2つめなので driver.window_handles[1]
driver.execute_script("window.open('#{url_coffee}');")
sleep 1
# [3] 2つめのタブに移動
driver.switch_to.window(driver.window_handles[1])
puts driver.title
# [4] 1つめのタブに移動
driver.switch_to.window(driver.window_handles[0])
sleep 1
puts driver.title
# [5] 2つめのタブに移動と閉じる
driver.switch_to.window(driver.window_handles[1])
driver.close
sleep 3
driver.quit
