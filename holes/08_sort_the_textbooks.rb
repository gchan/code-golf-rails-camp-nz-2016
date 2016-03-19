# Sort the Textbooks
#
# School is starting soon and so it's time to get our textbooks in order.
# You need to sort your books in alphabetical order
#
# Input:
#
#  _
# | |  _
# |F| | |
# |o|_|P|
# |o|B|P|
# | |a|C|
# | |r|G|
# |_|_|_|
#
# Output:
#
#    _
#   | |_
#   |F| |
#  _|o|P|
# |B|o|P|
# |a| |C|
# |r| |G|
# |_|_|_|

# Input

# The input will be a set of books which need to rearranged alphabetically.
# Check the relevent test case for an example.

# Output

# The output will need to be the same set of books organized in alphabetical order.
# The height of the books must stay the same and the title must have the same spacing from the top when re-arranged.

b=$<.read.split("\n").map(&:chars).transpose.select.with_index{|l,i|(i+1)%2==0}.map(&:join).sort_by{|a|a.scan(/[^\s_]+/) }

def z(l)i=i(l)
" "*(i+1)+"|"*(l.size-i-1)end

def i(l)
l.index("_")end

o=[]
o<<z(b[0])

b.each_cons(2) do |a, b|
o<<a
m=[i(a),i(b)].min
o<<" "*(m+1)+"|"*(b.size-m-1)
end

o<<b[-1]
o<<z(b[-1])

puts o.map(&:chars).transpose.map(&:join)
