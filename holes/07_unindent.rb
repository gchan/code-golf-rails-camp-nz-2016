#
# Strip extra indentation from a document.
# Effectively aligns the entire document to the left margin
# by removing the same amount of whitespace from each line.
#
# Technically, it looks for the least indented line in the whole string,
# and removes that amount of leading whitespace.

t=$<.read.split("\n")
# m=t.map{|l|l.scan(/^[\t ]*/)[0].size}.sort.find{|i|i>0}
puts t.map{|l|l[2..-1]}