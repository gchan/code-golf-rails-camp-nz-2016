#
# Levenshtein distance algorithm implementation for Ruby, with UTF-8 support.
#
# The Levenshtein distance is a measure of how similar two strings s and t are,
# calculated as the number of deletions/insertions/substitutions needed to
# transform s into t. The greater the distance, the more the strings differ.
#
# The Levenshtein distance is also sometimes referred to as the
# easier-to-pronounce-and-spell 'edit distance'.
#

def d(s, t)m=s.size+1
n=t.size+1
d=Array.new(m){Array.new(n,0)}
(1..m).each{|i|d[i][0]=i}
(1..n).each{|j|d[0][j]=j}
(1..n).each{|j|(1..m).each{|i|d[i][j]=[d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+(s[i-1]==t[j-1]?0:1)].min}}
d[m-1][n-1]end

puts $<.map{|l|a,b=l.split;d(a,b)}
