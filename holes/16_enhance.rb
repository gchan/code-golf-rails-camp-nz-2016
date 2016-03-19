# Double the size of the ASCII input
puts $<.map{|l|l=l.chars.map{|c|c*3}.join.gsub("\n","")+"\n";l*3}