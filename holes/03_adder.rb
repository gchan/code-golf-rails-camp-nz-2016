#
# Each input line is a series of numbers, separated by spaces
# Each output line should be the corresponding sum
#

while l=gets do
puts l.scan(/\d+/).map(&:to_i).inject(:+)
end