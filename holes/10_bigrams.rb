# Bigrams are pairs of words found in a text.
#
# This normalises and parses the input and then prints each bigram occuring
# more than once, along with its frequency. The output is sorted by frequency.
#
# For example, in the input text, the most frequeny pair is 'i will' with
# 28 occurences. The first line of the output will therefore be:
#
# i will: 28
#
# The text should be normalised, but punctuation will "stop" a bigram. e.g.
#
#   "Hello you how's it?" has 3 bigrams:
#        "hello you"
#        "you hows"
#        "hows it"
#
#   Whereas "Hello you, how's it?" has 2 bigrams:
#        "hello you"
#        "hows it"
#
# See the test output for examples

w=STDIN.read.downcase.split

t=Hash.new{|h,k|h[k]=0}

w.each_cons(2) do |a, b|
next if b=~/^[^\w\s]/ || a=~/[^\w\s]$/
c=a.gsub(/[^\w\s]/,'')+" "+b.gsub(/[^\w\s]/, '')
t[c]+=1
end

t.select{|b,o|o>1}.sort_by{|b,o|[-1*o,b]}.each{|b,o|puts "#{b}: #{o}"}