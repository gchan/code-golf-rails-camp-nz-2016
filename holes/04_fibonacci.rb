# Read the numbers on the input
# and determine if each number is a member of the fibonacci sequence

def p(i)Math.sqrt(i).to_i==Math.sqrt(i)end

puts $<.map{|l|q=5*l.to_i**2;p(q-4)||p(q+4)?"y":"n"}