require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/menu.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
tag_link = driver.find_element(:tag_name, "a")
# Ctrl + クリック
driver.action.
       key_down(:control).
       click(tag_link).
       key_up(:control).
       perform
# タブの移動
driver.switch_to.window(driver.window_handles[1])
sleep 1
# Ctrl + a
driver.action.
       key_down(:control).
       send_keys("a").
       key_up(:control).
       perform
sleep 3
driver.quit
