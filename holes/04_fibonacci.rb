# Read the numbers on the input
# and determine if each number is a member of the fibonacci sequence

def p?(i)Math.sqrt(i).to_i==Math.sqrt(i)end

while l=gets do
q=5*l.to_i**2
puts p?(q-4)||p?(q+4)?"y":"n"end