# What is the smallest number divisible by each of the numbers 1 to 20?
# Only need to check 11-19 since lower numbers are multiples of upper
# half. Also don't, need to check 20 since we're iterating on multiples
# of 20

current_test = 0
found_it = False

while not found_it:
   found_it = True
   current_test += 20
   for i in range(11,20):
      if (current_test % i) != 0:
         found_it = False
         break
      #
   #
#

print "\n", current_test, "\n\n"
