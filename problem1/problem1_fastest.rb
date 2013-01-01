# Add all the natural numbers below one thousand that are multiples of 3 or 5.


def SumDivisibleBy(n, upTo)
   p = upTo / n
   return n * (p * (p + 1) ) / 2
end

kUpTo = 999
 
print "\n"
print SumDivisibleBy(3, kUpTo) + SumDivisibleBy(5, kUpTo) - SumDivisibleBy(15, kUpTo) 
print "\n\n"
