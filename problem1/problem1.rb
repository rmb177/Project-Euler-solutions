# Add all the natural numbers below one thousand that are multiples of 3 or 5.
sum = 0
for i in 1..999
   sum += i if 0 == i % 3 or 0 == i % 5
end

print "\n"
print sum
print "\n\n"
