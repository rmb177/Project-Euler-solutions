# Find the largest palindrome made from the product of two 3-digit numbers.

a = 999
highestPalindrome = 0

while a > 0:
   b = 999
   while b > 0:
      product = a * b
      
      if product > highestPalindrome:
         if str(product) == str(product)[::-1]:
            highestPalindrome = product
         #
      #
      else:
         break
      #
      b -= 1
   #
   a -= 1
#

print "\n", highestPalindrome, "\n\n"
