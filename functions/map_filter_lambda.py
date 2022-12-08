f = lambda x : x * 5            # a lambda function
print(f(3), f(2342), f(-231))

# actual usuage of lambda function
x = [23,45,67,22,87,41,81]

x2 = list(map(lambda i: i**2, x))        # map function
print(x2)

a = [2,3,4,5,5,4,7,1]
b = [2,3,1,2,4,4,2,7]

ab = list(map(lambda i,j: i*j , a, b))       # map function with multiple list
print(ab)

# filter
evens = list(filter(lambda i: i%2 == 0, x))
print(evens)