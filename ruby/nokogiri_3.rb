require 'nokogiri'
html = <<-EOS
<div>
contents
<p>p1</p>
<a href='./page1.html'>link1</a>
<a href='./page2.html'>link2</a>
</div>
EOS
doc = Nokogiri::HTML(html)
c_nodes = doc.at("div").children
puts c_nodes.size
for c_node in c_nodes
  next if c_node.text? || c_node.name.eql?("p")
  p c_node.name + ":" + c_node.text
end
