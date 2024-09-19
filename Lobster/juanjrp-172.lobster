/* lobster --pak juanjrp.lobster */

def equation(data):
    let firstPart = (string_to_int(data[0]) * tan(string_to_float(data[1])))
    let seconPart = (tan(string_to_float(data[2]))-tan(string_to_float(data[1])))
    let D2 = firstPart / seconPart
    let H = round(tan(string_to_float(data[2])) * D2)
    return H

def count(numCases) -> int:
    if numCases != 0:
        let newCases = int(numCases) - 1
        print(equation(tokenize(get_line(" "), " ", " ")))
        count(newCases)

def main():
    let numCases = string_to_int(get_line(" "))
    count(numCases)

main()

/*
  $ cat DATA.lst | lobster juanjrp.lobster
    1743 775 824 1980 559 681 1777 1341
    1118 1886 1745 1977 1740 1776 1257
*/