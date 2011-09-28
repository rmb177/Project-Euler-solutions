# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

sum = 0
prevTerm = 1
currentTerm = 2

while currentTerm < 4000000
   sum += currentTerm if 0 == currentTerm % 2
   nextTerm = prevTerm + currentTerm
   prevTerm = currentTerm
   currentTerm = nextTerm
end

print "\n"
print sum
print "\n\n"
