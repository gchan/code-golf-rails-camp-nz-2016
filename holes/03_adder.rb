#
# Each input line is a series of numbers, separated by spaces
# Each output line should be the corresponding sum
#

puts $<.map{|l|l.scan(/\d+/).map(&:to_i).inject(:+)}