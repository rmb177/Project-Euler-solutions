currentTest = 20
foundIt = false

while !foundIt
   foundIt = true
   for i in 11..19  
      if (currentTest % i) != 0
         foundIt = false
         break
      end
   end
   currentTest += 20
end

print "\n\n", currentTest, "\n\n"
