# All prime #s other than 2 are odd so we don't have to check even #s
# If number is not divisible by other primes than it is prime

primes = [3]
number_of_primes = 2
current_val = 5
NUM_PRIME = 10001

print "\n\n"

while number_of_primes < NUM_PRIME:
  is_prime = True
  for prime in primes:
    if 0 == current_val % prime:
      is_prime = False
      break
  
  if is_prime:
    primes.append(current_val)
    number_of_primes += 1
  
  if number_of_primes < NUM_PRIME:
      current_val += 2

print current_val
print "\n\n"
