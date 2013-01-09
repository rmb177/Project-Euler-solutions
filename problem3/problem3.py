# Find the largest prime factor of a composite number.

COMPOSITE = 600851475143
SQRT_COMPOSITE = 775148     # Don't need to check past square root of composite

flags = range(0, SQRT_COMPOSITE + 1)
current_divisor = 2;
largest_prime = -1

while current_divisor < SQRT_COMPOSITE:
   if flags[current_divisor]:
      if 0 == COMPOSITE % current_divisor:
         largest_prime = current_divisor
      #
   
      index = current_divisor * 2
      while index < SQRT_COMPOSITE:
         flags[index] = False
         index += current_divisor
      #
   #
   current_divisor += 1
#

print "\n", largest_prime, "\n"
