w=STDIN.read.downcase.split

t=Hash.new{|h,k|h[k]=0}

w.each_cons(2) do |a, b|
next if b=~/^[^\w\s]/ || a=~/[^\w\s]$/
c=a.gsub(/[^\w\s]/,'')+" "+b.gsub(/[^\w\s]/, '')
t[c]+=1
end

t.select{|b,o|o>1}.sort_by{|b,o|[-1*o,b]}.each{|b,o|puts "#{b}: #{o}"}