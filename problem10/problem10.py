# Sieve of Eratosthenes

import math

is_prime = [True] * 2000000
MAX_FACTOR = math.floor(math.sqrt(2000000))

is_prime[0] = False
is_prime[1] = False
current_index = 2

while current_index < MAX_FACTOR:
    if is_prime[current_index]:
        cross_out = current_index ** 2
        while cross_out < 2000000:
            is_prime[cross_out] = False
            cross_out += current_index
    current_index += 1

current_index = 2
sum_of_primes = 0
while current_index < 2000000:
    if is_prime[current_index]:
        sum_of_primes += current_index
    current_index += 1

print("\n\n")
print(sum_of_primes)
print("\n\n")
