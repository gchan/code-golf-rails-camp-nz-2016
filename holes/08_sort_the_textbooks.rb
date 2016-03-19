b=$<.read.split("\n").map(&:chars).transpose.select.with_index{|l,i|-~i%2==0}.map(&:join).sort_by{|a|a.scan(/[^\s_]+/)}

def z(l)i=i(l)
" "*(i+1)+"|"*(l.size-i-1)end

def i(l)
l.index("_")end

o=[]
o<<z(b[0])

b.each_cons(2){|a,b|o<<a
m=[i(a),i(b)].min
o<<" "*-~m+"|"*(b.size-m-1)}

o<<b[-1]
o<<z(b[-1])

puts o.map(&:chars).transpose.map(&:join)
