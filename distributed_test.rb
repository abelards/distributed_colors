load 'distributed_colors.rb'
File.open('distributed_colors.html', 'w') {|f|
  d = DistributedColors.new
  f.puts "<html><body>"
  1.upto(100) {|i|
    colors = d.n_colors(i) # add options like `, mode: :rainbow` here
    content = colors.map{|c|
      "<td style='background-color: #{c}'>&nbsp;&nbsp;&nbsp;</td>"
    }.join
  	f.puts "<table><tr>#{content}</tr></table>"
  }
  f.puts "</body></html>"
}
