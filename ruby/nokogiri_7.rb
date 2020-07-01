require 'nokogiri'
html = <<-EOS
<div class="aaa">aaa<p id=100 class="aaa">ppp</p></div>
<div class="aab">aab</div>
<div class="aaa bbb">aaa bbb</div>
EOS
doc = Nokogiri::HTML(html)
nodes = doc.xpath("//*[@class = 'aaa']")
for node in nodes
  puts node.text
end
