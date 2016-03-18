# For each pair of lines from the input
# determine if the words is are anagrams of eachother

while f=gets do
s=gets
puts s.chars.sort == f.chars.sort
end
