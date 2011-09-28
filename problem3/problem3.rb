# Find the largest prime factor of a composite number.

kComposite = 600851475143
kSqrtComposite= 775148     # Don't need to check past square root of composite

# Flag array for multiples (non-primes) of #'s we've already checked
flags = Array.new(kSqrtComposite + 1, true)

currentDivisor = 2;
largestPrime = -1

while currentDivisor < kSqrtComposite
   if flags[currentDivisor]
      largestPrime = currentDivisor if 0 == (kComposite % currentDivisor)
   
      index = currentDivisor * 2
      while index < kSqrtComposite
         flags[index] = false
         index += currentDivisor
      end
   end
   currentDivisor += 1
end

print "\n", largestPrime, "\n\n"
