require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/file.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
upfile = 'C:\Users\writer\study_work\html\test.txt'
driver.find_element(:name, "filename").send_keys(upfile)
sleep 3
driver.quit
