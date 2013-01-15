# Find the largest palindrome made from the product of two 3-digit numbers.

highest_palindrome = 0

999.downto(1) { |a|
  999.downto(1) { |b|

    product = a * b
    
    if product > highest_palindrome
      highest_palindrome = product if product.to_s == product.to_s.reverse
    else
      break
    end
  }
}

print "\n", highest_palindrome, "\n\n"

