def check(n):
    if n<2:
        return n%2 == 0
    return check(n-2)

print(check(11))
