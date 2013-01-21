# Find the largest palindrome made from the product of two 3-digit numbers.
#
# P = 100000x + 10000y + 1000z + 100z + 10y + x
# P = 100001x + 10010y + 1100z
# P = 11(9091x + 910y + 100z)
#
# Since 11 is prime, at least one of the integers a or b must have 
# a factor of 11 and we can eliminate numbers we have to check

highest_palindrome = 0

999.downto(100) { |a|
  
  if a % 11 == 0
    b = 999
    decrement = 1
  else
    b = 990   # Largest # divisible by 11
    decrement = 11
  end
    
  while b >= a
    product = a * b
    
    break if product <= highest_palindrome
    highest_palindrome = product if product.to_s == product.to_s.reverse
    b -= decrement
  end
}

print "\n", highest_palindrome, "\n\n"

