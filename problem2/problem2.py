# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

sum = 0
prevTerm = 1
currentTerm = 2

while currentTerm < 4000000:
   if 0 == currentTerm % 2:
      sum += currentTerm
   #
   nextTerm = prevTerm + currentTerm
   prevTerm = currentTerm
   currentTerm = nextTerm
#
print "\n"
print sum
print "\n"
