require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/coffee.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# プルダウン要素からSelectインスタンスを取得
element = driver.find_element(:name, "num")
select_num = Selenium::WebDriver::Support::Select.new(element)
# select_byメソッドで操作(value属性値の例)
select_num.select_by(:value, "2")
element = driver.find_element(:xpath, "/html/body/form/input[1]")
element.click
chk_sugar = driver.find_element(:css, "input[name='included'][value='sugar']")
chk_milk = driver.find_element(:css, "input[name='included'][value='milk']")
chk_cream = driver.find_element(:css, "input[name='included'][value='cream']")
chk_sugar.click
chk_cream.click
p chk_milk.selected? # false
p chk_cream.selected? # true
element = driver.find_element(:name, "remarks")
element.send_keys("やや熱めでお願いします")
sleep 1
element = driver.find_element(:css, "input[type='submit']")
# element = driver.find_element(:css, "input[type='reset']")
element.click
# acceptメソッドでOK押下
driver.switch_to.alert.accept
sleep 3
driver.quit
