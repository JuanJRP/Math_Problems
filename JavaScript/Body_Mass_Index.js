const count = (numCases) => {
  if (numCases == 0) return;
  else output(BMI(input()) + " ");
  count(numCases - 1);
};

const BMI = (data) => {
  array = data.split(" ");
  bmiAnsw = parseFloat(array[0]) / parseFloat(array[1]) ** 2;
  if (bmiAnsw < 18.5) return "Underweight";
  if (bmiAnsw >= 18.5 && bmiAnsw < 25.0) return "Normal weight";
  if (bmiAnsw >= 25.0 && bmiAnsw < 30.0) return "Overweight";
  if (bmiAnsw >= 30.0) return "Obesity";
};

count(input());