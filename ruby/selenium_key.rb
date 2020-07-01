require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/key.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
text1 = driver.find_element(:name, "text1")
text2 = driver.find_element(:name, "text2")
# text1 SHIFTキー押しながら test
text1.send_keys(:shift, "test")
# text1 Ctrlキー押しながら ac
text1.send_keys(:control, "ac")
# text2 Ctrlキー押しながら v
text2.send_keys(:control, "v")
sleep 3
driver.quit
