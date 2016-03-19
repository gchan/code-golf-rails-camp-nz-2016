def d(s,t)m=s.size
n=t.size
d=Array.new(m+1){Array.new(n+1,0)}
(1..n).each{|j|d[0][j]=j;(1..m).each{|i|d[i][0]=i;d[i][j]=[d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+(s[i-1]==t[j-1]?0:1)].min}}
d[m][n]end

puts$<.map{|l|d(*l.split)}