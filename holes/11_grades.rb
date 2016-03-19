# Translate percentages to alphabetical grades

STDIN.read.each_line{|l|s=l.to_f
puts s>90?'A':s>80?'B':s>70?'C':s>60?'D':s>50?'E':s>=0?'F':'?'}
