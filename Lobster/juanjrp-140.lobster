/* lobster --pak juanjrp.lobster */

def process(N):
    print((factorial(N * 2)) / (factorial(N + 1) * factorial(N)))

def factorial(num) -> int:
    if (num == 0 or num == 1): 
        return 1
    else: 
        return num * factorial(num - 1) 

process(string_to_int(get_line(" ")))

/*
  $ cat DATA.lst | lobster juanjrp.lobster
    16796
*/