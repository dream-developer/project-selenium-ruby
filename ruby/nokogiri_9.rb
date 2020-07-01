require 'selenium-webdriver'
require 'nokogiri'
url = "file:///C:/Users/writer/study_work/html/menu.html"
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
driver.get(url)
# HTMLをパースして"商品名,単価" の文字列を返す
def get_parsed_data(html)
  doc = Nokogiri::HTML(html)
  item_name = doc.at(".item_name").text
  unit_price = doc.at(".unit_price").text
  unit_price.gsub!("円", "")
  data = item_name + "," + unit_price
  return data
end
# １．リンクの要素を取得
item_links = driver.find_elements(:css, "ul.item_link > li > a")
for item_link in item_links
  # アクセス間隔は1秒以上空ける
  sleep 1
  # ２．Ctrl + クリック
  driver.action.
     key_down(:control).
     click(item_link).
     key_up(:control).
     perform
  # ３．タブの移動
  driver.switch_to.window(driver.window_handles[1])
  # ４．HTMLをパースし出力
  puts get_parsed_data(driver.page_source)
  # タブを閉じる
  driver.close
  # ５．元のタブへ移動
  driver.switch_to.window(driver.window_handles[0])
end
driver.quit
