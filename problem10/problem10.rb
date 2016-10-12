# Sieve of Eratosthenes
is_prime = Array.new(2000000, true)
MAX_FACTOR = Math.sqrt(2000000).floor

is_prime[0] = false
is_prime[1] = false
current_index = 2

while current_index < MAX_FACTOR
  if is_prime[current_index]
    cross_out = current_index ** 2
    while cross_out < 2000000
      is_prime[cross_out] = false
      cross_out += current_index
    end
  end
  current_index += 1
end

current_index = 2
sum_of_primes = 0
while current_index < 2000000
  sum_of_primes += current_index if is_prime[current_index]
  current_index += 1
end
  
puts sum_of_primes
puts "\n\n"
