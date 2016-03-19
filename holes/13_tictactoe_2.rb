#
# Take a line of naughts, crosses, and dots
# and identifier the winner of the board.
# If the board has no winner, print a '?'
#
# The input has an identical format to the ticatactoe_1 hole
#

# class Board
#   InvalidPlacementError = Class.new StandardError

#   # Takes a simple string like e.g.
#   #   "xoxoxooo."
#   #   "x..o...x."
#   #  Each position will correspond to a number from the grid
#   #     1 | 2 | 3
#   #     --+---+--
#   #     4 | 5 | 6
#   #     --+---+--
#   #     7 | 8 | 9
#   def load(input)
#     @positions = input
#     raise InvalidPlacementError if @positions.size > 9
#   end

#   # returns 'x', 'o' or `nil` for a draw or an incomplete board
#   def winner
#     horizontal_winner || vertical_winner || diagonal_winner
#   end

# private

#   def diagonal_winner
#     if i[0] != "." && i[0] == i[4] && i[0] == i[8]
#       i[0]
#     elsif i[2] != "." && i[2] == i[4] && i[2] == i[6]
#       i[2]
#     end
#   end

#   def horizontal_winner
#     if i[0] != "." && i[0] == i[1] && i[0] == i[2]
#       i[0]
#     elsif i[3] != "." && i[3] == i[4] && i[3] == i[5]
#       i[3]
#     elsif i[6] != "." && i[6] == i[7] && i[6] == i[8]
#       i[6]
#     end
#   end

#   def vertical_winner
#     if i[0] != "." && i[0] == i[3] && i[0] == i[6]
#       i[0]
#     elsif i[1] != "." && i[1] == i[4] && i[1] == i[7]
#       i[1]
#     elsif i[2] != "." && i[2] == i[5] && i[2] == i[8]
#       i[2]
#     end
#   end

# end


# while line = gets do
#   board = Board.new
#   board.load line.strip
#   puts board.winner||'?'
# end

while i=gets do
puts (if i[0]!="."&&i[0]==i[4]&&i[0]==i[8]
i[0]elsif i[2]!="."&&i[2]==i[4]&&i[2]==i[6]
i[2]elsif i[0]!="."&&i[0]==i[1]&&i[0]==i[2]
i[0]elsif i[3]!="."&&i[3]==i[4]&&i[3]==i[5]
i[3]elsif i[6]!="."&&i[6]==i[7]&&i[6]==i[8]
i[6]elsif i[0]!="."&&i[0]==i[3]&&i[0]==i[6]
i[0]elsif i[1]!="."&&i[1]==i[4]&&i[1]==i[7]
i[1]elsif i[2]!="."&&i[2]==i[5]&&i[2]==i[8]
i[2]else
"?"end)
end