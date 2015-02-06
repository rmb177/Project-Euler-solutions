$up_to = 100

# Use number pairs to avoid looping over list
def square_of_sum
  ($up_to * ($up_to + 1) / 2) ** 2
end

# This probably isn't really any faster than using ** operator
# but finding squares by using increasing odd numbers
# 1 4 9 16 25
#  4 =  1 + 3
#  9 =  4 + 5
# 16 =  9 + 7
# 25 = 16 + 9 
def sum_of_squares
  sum = 0
  odd_increment = 1
  previous_square = 0
  (1..$up_to).each {
    temp = previous_square + odd_increment
    sum = sum + previous_square + odd_increment
    odd_increment += 2
    previous_square = temp
  }
  sum
end

val1 = square_of_sum
val2 = sum_of_squares
puts val1
puts val2
puts val1 - val2
