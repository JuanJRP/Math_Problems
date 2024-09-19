const factorial = (num) =>{
    if (num == 0n || num == 1n){ return 1n;
    } else { return num * factorial(num - 1n);}
}

const process = (N) => {
    output((factorial(N * 2n)) / (factorial(N + 1n) * factorial(N)))
};

process(BigInt(input()));