# The classic programming challenge
# Read the numbers from STDIN
# For multiples of 3 print Fizz
# For multiples of 5 print Buzz
# For multiples of both print both
# Otherwise print the original number

while l=gets do i=l.to_i
puts i%15==0?"FizzBuzz":i%5==0?"Buzz":i%3==0?"Fizz":i
end