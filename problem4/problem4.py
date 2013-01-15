# Find the largest palindrome made from the product of two 3-digit numbers.
highest_palindrome = 0

for a in reversed(range(999)):
   for b in reversed(range(999)):
      
      product = a * b
      
      if product > highest_palindrome:
         if str(product) == str(product)[::-1]:
            highest_palindrome = product
      else:
         break

print "\n", highest_palindrome, "\n\n"

