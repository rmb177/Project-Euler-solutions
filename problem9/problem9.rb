answer = 0
start_digit = 333
found = false

while !found
  (start_digit..1000).each { |x|
    (start_digit + 1..1000).each { |y|
      (start_digit + 2..1000).each { |z|
        if x + y + z == 1000 and x**2 + y**2 == z**2
          found = true
          answer = x * y * z
          puts x
          puts y
          puts z
        end
	 	  break if found or x + y + z > 1000
	 	  }
	 	  break if found
	  }
	  break if found
  }
  break if found
  start_digit = start_digit - 1
end

puts answer
