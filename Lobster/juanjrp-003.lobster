/* lobster --pak juanjrp.lobster */

def Sum(data):
    return(string_to_int(data[0]) + string_to_int(data[1]))

def count(numCases) -> int:
    if numCases != 0:
        let newCases = int(numCases) - 1
        print(Sum(tokenize(get_line(" "), " ", " ")))
        count(newCases)

def main():
    let numCases = string_to_int(get_line(" "))
    count(numCases)

main()

/*
  $ cat DATA.lst | lobster juanjrp.lobster
  788535 935194 1651414 1178664 500960 1043419 987795 
  158078 1921927 963211 1760186
*/