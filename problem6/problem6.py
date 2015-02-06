up_to = 100

def square_of_sum():
   """
   Use number pairs to avoid looping over list
   """
   return (up_to * (up_to + 1) / 2) ** 2


def sum_of_squares():
   """
   This probably isn't really any faster than using ** operator
   but finding squares by using increasing odd numbers.
   # 1 4 9 16 25
   #  4 =  1 + 3
   #  9 =  4 + 5
   # 16 =  9 + 7
   # 25 = 16 + 9
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
