# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

sum = 10
prev_prev_term = 2
prev_term = 8
current_term = 34

while current_term < 4000000
   sum += current_term
   prev_prev_term = prev_term
   next_term = (4 * current_term) + prev_term
   prev_term, current_term = current_term, next_term
end

print "\n"
print sum
print "\n\n"
