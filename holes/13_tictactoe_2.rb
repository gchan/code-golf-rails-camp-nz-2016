#
# Take a line of naughts, crosses, and dots
# and identifier the winner of the board.
# If the board has no winner, print a '?'
#
# The input has an identical format to the ticatactoe_1 hole
#

$<.map{|l|a,b,c,d,e,f,g,h,j,m=l.chars;puts a!="."&&a==e &&a==l[8]?a:c!="."&&c==e&&c==g ?c:a!="."&&a==b&&a==c ?a:d!="."&&d ==e&&d==f ?d:g!="."&&g==h&&g==l[8]?g:a!="."&&a==d&&a==g ?a:b!="."&&b==e&&b==h ?b:c!="."&&c==f&&c==l[8]?c:"?"}