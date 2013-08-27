# All prime #s other than 2 are odd so we don't have to check even #s
# If number is not divisible by other primes than it is prime

primes = [3]
number_of_primes = 2
current_val = 5
NUM_PRIME = 10001

puts "\n\n"

while number_of_primes < NUM_PRIME
  is_prime = true
  primes.each { |prime|
    if 0 == current_val % prime
      is_prime = false
      break
    end
  }
  
  if is_prime
    primes << current_val
    number_of_primes += 1
  end
  
  current_val += 2 if number_of_primes < NUM_PRIME
end

puts current_val
puts "\n\n"
