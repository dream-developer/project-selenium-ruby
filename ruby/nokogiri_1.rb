require 'nokogiri'
html = <<-EOS
<html><head><title>title</title></head><body>
<p id=1>a</p><p id=2>b</p><p id=3>c</p>
</body></html>
EOS
doc = Nokogiri::HTML(html)
# title
puts doc.title
node = doc.at("#2")
# b
puts node.text