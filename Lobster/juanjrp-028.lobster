/* lobster --pak juanjrp.lobster */

def BMI(data):
    let bmiAnsw = (string_to_float(data[0]) / pow(string_to_float(data[1]), 2.0))    
    if(bmiAnsw < 18.5): return "under"
    if(bmiAnsw >= 18.5 and bmiAnsw < 25.0): return "normal"
    if(bmiAnsw >= 25.0 and bmiAnsw < 30.0): return "over"
    if(bmiAnsw >= 30.0): return "obese"
    return "unknown"

def count(numCases) -> int:
    if numCases != 0:
        let newCases = int(numCases) - 1
        print((BMI(tokenize(get_line(" "), " ", " "))))
        count(newCases)

def main():
    let numCases = string_to_int(get_line(" "))
    count(numCases)

main()

/*
  $ cat DATA.lst | lobster juanjrp.lobster
  normal normal normal normal under normal under under 
  normal obese normal under normal over obese normal 
  normal under over obese over obese over obese under obese
*/