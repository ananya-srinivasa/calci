def add(a,b):
    total = 0
    total=a+b
    return total
def substract(c,d):    
    total=c-d
    return total
def multiply(a,b):
    total=a*b
    return total
def divide(a,b):
    total=a/b
    return total
a = add(2,3)
s=substract(10,6)
m=multiply(6,4)
d=divide(6,3)
total=d+m*a-s
print("Total:", total)