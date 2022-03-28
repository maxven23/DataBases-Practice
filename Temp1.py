import random

def max4(a, b, c, d):
    return (a + b + c + d + abs(a - b) + abs(c - d) + abs(a + b + abs(a - b) - (c + d + abs(c - d)))) / 4

counter = 0
N = 1000
for _ in range(N):
    a = random.randint(1, 1000)
    b = random.randint(1, 1000)
    c = random.randint(1, 1000)
    d = random.randint(1, 1000)

    if max4(a, b, c, d) == max(a, b, c, d):
        counter += 1
    print(f"Test {_} passed" if max4(a, b, c, d) == max(a, b, c, d) else f"Test {_} failed")

print(f"{counter}/{N} tests passed")