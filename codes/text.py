import math
a=int(input('a number'))
b=int(input('b number'))

c=int(input('c number'))

def quadratic(a, b, c):
    d=(b**-4*a*c)
    g=math.sqrt(d)
    if a !=0 and d>=0:
        md = (-b+g)/2*a
        mb=(-b-g)/2*a
    else:
        print('errors')
    return('%.2f,%.2f'%(md,mb))
print('hello')
x = input('a number')
x = int(x)
if x == 2 :
    print('yes')
else :
    print('no')
