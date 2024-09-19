const count = (numCases) => {
    if (numCases == 0) return;
    else output(findRoot(input()) + " ");
    count(numCases - 1);
};

const equation = (x, A, B, C, D) => {
    return A * x + B * Math.sqrt(Math.pow(x, 3)) - C * Math.exp(-x / 50) - D;            
};

const findRoot = (data) => {
    array = data.split(" ");
    A = parseFloat(array[0]); B = parseFloat(array[1])
    C = parseFloat(array[2]); D = parseFloat(array[3])
    const recursiveRoot = (x = 1, iterationsLeft = 100) => {
        if (iterationsLeft === 0) {
            return x;
        } else {
            const f = equation(x, A, B, C, D);
            const df = A + (3/2) * B * Math.sqrt(x) + (C / 50) * Math.exp(-x / 50);
            x = x - f / df;
            return recursiveRoot(x, iterationsLeft - 1);
        }
    };
    return recursiveRoot();
};

count(input());