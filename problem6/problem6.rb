$up_to = 100

# Use number pairs to avoid looping over list
def square_of_sum
  sum = 0
  if $up_to % 2 == 0
    sum = ((1 + $up_to) * ($up_to / 2)) ** 2
  else
    sum = ((1 + $up_to) * ($up_to / 2)  + ($up_to / 2)) ** 2
  end
  sum
end

# This probably isn't really any faster than using ** operator
# but finding squares by using increasing odd numbers
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
