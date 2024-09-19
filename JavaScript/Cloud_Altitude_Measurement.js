const count = (numCases) => {
    if (numCases == 0) return;
    else output(equation(input()) + " ");
    count(numCases - 1);
};

const equation = (data) => {
    array = data.split(" ");
    let A_Rad = (array[1] * Math.PI) / 180;
    let B_Rad = (array[2] * Math.PI) / 180;
    let D2 = (array[0] * Math.tan(A_Rad)) / (Math.tan(B_Rad)-Math.tan(A_Rad))
    let H = Math.round(Math.tan(B_Rad) * D2)
    return H;
}

count(input());