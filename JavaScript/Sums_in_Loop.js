const count = (numCases) => {
  if (numCases == 0) return;
  else output(Sum(input()) + " ");
  count(numCases - 1);
};

const Sum = (data) => {
  array = data.split(" ");
  return parseInt(array[0]) + parseInt(array[1]);
};

count(input());