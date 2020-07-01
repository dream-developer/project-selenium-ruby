require 'nokogiri'
html = "<a href='./page1.html'>link1</a>"
doc = Nokogiri::HTML(html)
node = doc.at("a")
p node.attribute("href")
p node.attribute("href").name
p node.attribute("href").value
