/* lobster --pak juanjrp.lobster */

def equation(x, A, B, C, D):
    return A * x + B * sqrt(pow(x, 3)) - C * (1 / pow(2.71828, (x / 50)) ) - D

def findRoot(data):
    let A = string_to_float(data[0]) 
    let B = string_to_float(data[1])
    let C = string_to_float(data[2])
    let D = string_to_float(data[3])

    def recursiveRoot(x = 1.0, iterationsLeft = 100) -> float:
        if (iterationsLeft == 0):
            return x
        else:
            let f = equation(x, A, B, C, D)
            let df = A + (3/2) * B * sqrt(x) + (C / 50) * pow(2.71828, -x / 50)
            x = x - f / df
            return recursiveRoot(x, iterationsLeft - 1)
        
    return recursiveRoot()

def count(numCases) -> int:
    if numCases != 0:
        let newCases = int(numCases) - 1
        print(findRoot(tokenize(get_line(" "), " ", " ")))
        count(newCases)

def main():
    let numCases = string_to_int(get_line(" "))
    count(numCases)

main()

/*
  $ cat DATA.lst | lobster juanjrp.lobster
  5.757156992667 56.25164127017 15.53189066043 
  54.12826740802 69.99229820565 12.92022671794
*/