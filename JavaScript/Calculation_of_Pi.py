def isqrt(n):
    if n == 0 or n == 1: return n
    def binarSearch(start, end):
        if start > end: return end
        half = (start + end) // 2
        if half * half == n: return half
        elif half * half < n: return binarSearch(half + 1, end)
        else: return binarSearch(start, half - 1)
    return binarSearch(0, n)

def calculatePi(K, N, R=None, sideLength=None, sides=6):
    if R is None: 
        R = 10 ** K
        print(R)
    if sideLength is None: sideLength = R
    if N == 0:
        pi = sides * sideLength // 2
        return pi
    else:
        d = sideLength // 2
        print(d)
        h = isqrt(R**2 - d**2)
        sideLength = isqrt(d**2 + (R - h)**2)
        sides *= 2
        return calculatePi(K, N - 1, R, sideLength, sides)

print(calculatePi(int(37), int(11)))