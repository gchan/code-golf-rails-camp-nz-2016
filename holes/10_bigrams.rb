t=Hash.new{|h,k|h[k]=0}
p=/[^\w\s]/
$<.read.downcase.split.each_cons(2){|a,b|
next if b=~/^#{p}/||a=~/#{p}$/
c=a.gsub(p,'')+" "+b.gsub(p,'')
t[c]+=1}

puts t.select{|b,o|o>1}.sort_by{|b,o|[-1*o,b]}.map{|b,o|"#{b}: #{o}"}