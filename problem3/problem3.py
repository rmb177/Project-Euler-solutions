# Find the largest prime factor of a composite number.
# Using Sieve of Eratosthenes algorithm to find primes

COMPOSITE = 600851475143
SQRT_COMPOSITE = 775148     # Don't need to check past square root of composite

flags = [True] * (SQRT_COMPOSITE + 1)
current_divisor = 2;
largest_prime = -1
num_iterations = 1
while current_divisor < SQRT_COMPOSITE:
   if 0 == (COMPOSITE % current_divisor):
      largest_prime = current_divisor
      
   index = current_divisor ** 2
   while index < SQRT_COMPOSITE:
      flags[index] = False
      index += current_divisor
         
   current_divisor += 1
   while not flags[current_divisor]:
      current_divisor += 1
   
   num_iterations += 1
print "\n", largest_prime, "\n"

