def is_prime(number)
  return false if number == 1
  return true if number < 4
  return false if number.even?
  return true if number < 9
  return false if number % 3 == 0
  
  r = Math.sqrt(number).floor
  f = 5
  while f <= r
     return false if 0 == (number % f)
     return false if 0 == (number % (f + 2))
     f += 6
  end
  return true
end


limit = 10001
count = 1
candidate = 1
while count < limit
  candidate += 2
  count += 1 if is_prime(candidate)
end

puts "\n\n"
puts candidate
puts "\n\n"