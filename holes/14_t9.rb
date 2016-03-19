# Implement a T9 translation
#
# Translate an input string like '0800-moar-pizza'
# into its keypad equivalent: 0800-6627-74992

STDIN.read.each_line{|l|puts l.tr("abcdefghijklmnopqrstuvwxyz", "22233344455566677778889999")}
