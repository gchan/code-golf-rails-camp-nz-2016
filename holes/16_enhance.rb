puts $<.map{|l|l=l.chars.map{|c|c*3}.join.gsub("\n","")+"\n";l*3}