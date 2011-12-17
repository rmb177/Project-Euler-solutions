# What is the smallest number divisible by each of the numbers 1 to 20?

currentTest = 20
foundIt = False

while not foundIt:
   foundIt = True
   for i in range(11,20):
      if (currentTest % i) != 0:
         foundIt = False
      #
   #
   currentTest += 20
#

print "\n", currentTest, "\n\n"
