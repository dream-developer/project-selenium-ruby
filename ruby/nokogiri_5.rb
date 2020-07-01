require 'nokogiri'
html = "<a id=10 class='linkstr' href='./page1.html'>link1</a>"
doc = Nokogiri::HTML(html)
node = doc.at("a")
p node.keys
p node.values
