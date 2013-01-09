# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

sum = 0
prev_term = 1
current_term = 2

while current_term < 4000000:
   if 0 == current_term % 2:
      sum += current_term
   #
   next_term = prev_term + current_term
   prev_term = current_term
   current_term = next_term
#
print "\n"
print sum
print "\n"
