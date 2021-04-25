export const rows = (n) => {
  if (n === 0) {
    return [];
  }

  const pascal = [];

  const rowArr = [...Array(n).keys()].map((x) => x + 1);
  for (const rowNum of rowArr) {
    pascal.push(nthRow(rowNum));
  }

  return pascal;
};

const nthRow = (n) => {
  const numRange = [...Array(n - 1).keys()].map((x) => x + 1);
  const fractions = numRange.map((x) => (n - x) / x);

  const arr = [1];
  for (const fraction of fractions) {
    arr.push(arr[arr.length - 1] * fraction);
  }

  return arr;
};