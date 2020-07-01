require 'nokogiri'
html = <<-EOS
<html><head><title>title</title></head><body>
<p id=1>a</p><p id=2>b</p><p id=3>c</p>
</body></html>
EOS
doc = Nokogiri::HTML(html)
puts doc.at("p")
puts doc.at("p").text
puts doc.css("p")
puts doc.css("p").text
puts doc.css("p")[2].text
puts doc.xpath("/html/body/p[2]").text
puts doc.search("#1").text