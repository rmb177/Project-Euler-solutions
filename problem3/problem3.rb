# Find the largest prime factor of a composite number.
# Using Sieve of Eratosthenes algorithm to find primes

COMPOSITE = 600851475143
SQRT_COMPOSITE = 775148     # Don't need to check past square root of composite

# Flag array for multiples (non-primes) of #'s we've already checked
flags = Array.new(SQRT_COMPOSITE + 1, true)

current_divisor = 2;
largest_prime = -1
num_iterations = 0

while current_divisor < SQRT_COMPOSITE
   largest_prime = current_divisor if 0 == (COMPOSITE % current_divisor)
   
   index = current_divisor ** 2
   while index < SQRT_COMPOSITE
      flags[index] = false
      index += current_divisor
   end
   
   current_divisor += 1 
   while not flags[current_divisor]
      current_divisor += 1
   end
end

print "\n", largest_prime, "\n\n"
