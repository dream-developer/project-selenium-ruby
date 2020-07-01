require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/menu.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# h1タグのテキスト
tags_h1 = driver.find_elements(:tag_name, "h1")
for h1 in tags_h1
  puts h1.text
end
# aタグのテキストとhref属性の値
tags_a = driver.find_elements(:tag_name, "a")
for a in tags_a
  puts a.text + " " + a.attribute("href")
end
# ulタグの数 → 1
puts driver.find_elements(:tag_name, "ul").length
# liタグの数 → 2
puts driver.find_elements(:tag_name, "li").length
# ulタグのテキストを取得
puts driver.find_elements(:tag_name, "ul")[0].text
# aタグ２つめのテキスト → Tea 
puts driver.find_elements(:tag_name, "a")[1].text
# aタグ２つめをクリック 
sleep 1
driver.find_elements(:tag_name, "a")[1].click
sleep 3
driver.quit
