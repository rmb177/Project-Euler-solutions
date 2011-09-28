# Add all the natural numbers below one thousand that are multiples of 3 or 5.

sum = 0
for i in range(1, 1000):
   if 0 == i % 3 or 0 == i % 5:
      sum = sum + i
   #
#

print "\n"
print sum
print "\n"
