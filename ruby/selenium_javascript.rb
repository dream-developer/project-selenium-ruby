require 'selenium-webdriver'
url = "file:///C:/Users/writer/study_work/html/javascript.html"
driver = Selenium::WebDriver.for :chrome
driver.get(url)
# [1] JavaScript で計算しアラートで表示
driver.execute_script("ans = 1 +1 ; alert(ans);")
sleep 1
# [2] アラートのOK押下
driver.switch_to.alert.accept
# [3] myfunc関数実行
driver.execute_script("myfunc(ans);")
sleep 1
driver.switch_to.alert.accept
# [4] スクロール
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
sleep 3
driver.quit
