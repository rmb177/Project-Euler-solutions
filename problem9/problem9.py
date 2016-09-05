answer = 0
found = False

for a in reversed(range(333)):
    b = a + 1
    c = 1000 - a - b
    
    while b < c:
        if a**2 + b**2 == c**2:
            found = True
            answer = a * b * c
            print "%d, %d, %d" %(a, b, c)
            break
    
        b += 1
        c -= 1
    
    if found:
        break

print answer