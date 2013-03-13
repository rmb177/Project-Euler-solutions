up_to = 100

def square_of_sum():
   """
   Use number pairs to avoid looping over list
   """
   sum = 0
   if up_to % 2 == 0:
      sum = ((1 + up_to) * (up_to / 2)) ** 2
   else:
      sum = ((1 + up_to) * (up_to / 2)  + (up_to / 2)) ** 2
   return sum


def sum_of_squares():
   """
   This probably isn't really any faster than using ** operator
   but finding squares by using increasing odd numbers.
   """
   sum = 0
   odd_increment = 1
   previous_square = 0
   for i in range(1, up_to + 1):
      temp = previous_square + odd_increment
      sum = sum + previous_square + odd_increment
      odd_increment += 2
      previous_square = temp
   return sum

if __name__ == '__main__':
   val1 = square_of_sum()
   val2 = sum_of_squares()
   print val1
   print val2
   print val1 - val2
