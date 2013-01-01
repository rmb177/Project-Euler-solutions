# Find the largest palindrome made from the product of two 3-digit numbers.

a = 999
highestPalindrome = 0

while a > 0
   b = 999
   while b > 0
      product = a * b
      
      if product > highestPalindrome 
         if product.to_s == product.to_s.reverse
            highestPalindrome = product
         end
      else
         break
      end
      b -= 1
   end
   a -= 1
end

print "\n", highestPalindrome, "\n\n"

