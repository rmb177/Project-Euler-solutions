answer = 0
sequence = 333..1
found = false

(sequence.first).downto(sequence.last).each { |a|
  b = a + 1
  c = 1000 - a - b
  
  while b < c 
    if (a**2 + b**2 == c**2)
      found = true
      answer = a * b * c
      puts "#{a}, #{b}, #{c}"
      break
    end
    
    b += 1
    c -= 1
  end
  
  break if found
}

puts answer
