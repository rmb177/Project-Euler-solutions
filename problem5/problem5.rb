# What is the smallest number divisible by each of the numbers 1 to 20?
# Only need to check 11-19 since lower numbers are multiples of upper
# half. Also don't, need to check 20 since we're iterating on multiples
# of 20

current_test = 20
found_it = false

while !found_it
   found_it = true
   for i in 11..19  
      if (current_test % i) != 0
         found_it = false
         break
      end
   end
   current_test += 20
end

print "\n", current_test, "\n\n"
