function getMoneySpent(keyboards, drives, b) {
  let i = 0,
    j = 0;
  let result = 0;
  while (i < keyboards.length) {
    const sum = keyboards[i] + drives[j];
    if (sum > result && sum <= b) result = sum;
    j += 1;
    if (j === drives.length) {
      j = 0;
      i += 1;
    }
  }
  return result > 0 ? result : -1;
}

const kb = [3, 1];
const m = [5, 2, 8];
console.log(getMoneySpent(kb, m, 10));