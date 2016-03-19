def p(i)Math.sqrt(i).to_i==Math.sqrt(i)end

puts $<.map{|l|q=5*l.to_i**2;p(q-4)||p(q+4)?"y":"n"}