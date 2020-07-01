require 'nokogiri'
html = <<-EOS
<a href='./page1.html'>text1</a>
<a href='./page2.html'>text2 </a>
<a href='./page3.html'>abcd3</a>
EOS
doc = Nokogiri::HTML(html)
nodes = doc.xpath("//a[text() = 'text1']")
for node in nodes
  next if !node.has_attribute?("href")
  puts node.attribute("href").value
end
