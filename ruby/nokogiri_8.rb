require 'nokogiri'
html = '<div class="aaa">aaa<p class="aaa">ppp</p></div>'
doc = Nokogiri::HTML(html)
node = doc.at("//*[@class = 'aaa']")
# aaappp
puts node.text
doc.xpath("//div/p").remove
# aaa
node = doc.at("//*[@class = 'aaa']")
puts node.text
