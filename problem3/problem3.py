# Find the largest prime factor of a composite number.

kComposite = 600851475143
kSqrtComposite = 775148     # Don't need to check past square root of composite

flags = range(0, kSqrtComposite + 1)
currentDivisor = 2;
largestPrime = -1

while currentDivisor < kSqrtComposite:
   if flags[currentDivisor]:
      if 0 == kComposite % currentDivisor:
         largestPrime = currentDivisor
      #
   
      index = currentDivisor * 2
      while index < kSqrtComposite:
         flags[index] = False
         index += currentDivisor
      #
   #
   currentDivisor += 1
#

print "\n", largestPrime, "\n"
