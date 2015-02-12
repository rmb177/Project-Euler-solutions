answer = 0
start_digit = 333
found = False

while not found:
  for x in xrange(start_digit, 1000):
    for y in xrange(start_digit + 1, 1000):
      for z in xrange(start_digit + 2, 1000):
        if x + y + z == 1000 and x**2 + y**2 == z**2:
          found = True
          answer = x * y * z
          print(x)
          print(y)
          print(z)
        if found or x + y + z >  1000:
          break 
      if found:
        break
    if found:
      break
  if found:
     break
  start_digit = start_digit - 1

print(answer)
