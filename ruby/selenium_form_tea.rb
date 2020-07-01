require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/tea.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# [value='cream'] が無ければ [value='lemon'] の方を取得
if !driver.find_elements(:css, "input[name='included'][value='cream']").empty? then
  element = driver.find_element(:css, "input[name='included'][value='cream']")
else
  element = driver.find_element(:css, "input[name='included'][value='lemon']")
end
element.click
sleep 3
driver.quit
