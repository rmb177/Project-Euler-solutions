k = 20
n = 1
check = true
limit = Math.sqrt(k)
primes = [2, 3, 5, 7, 11, 13, 17, 19]
a = []

i = 0
primes.each { |p|
  a[i] = 1
  if check
    if primes[i] <= limit
      a[i] = (Math.log(k) / Math.log(primes[i])).floor
    else
      check = false
    end
  end
  
  n = n * (primes[i] ** a[i])
  i += 1
}

puts n