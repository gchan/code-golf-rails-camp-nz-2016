# Double the size of the ASCII input
STDIN.read.each_line{|l|l=l.chars.map{|c|c*3}.join.gsub("\n","")+"\n"
puts l*3}
