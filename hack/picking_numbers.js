function pickingNumbers(a) {
  a.sort();
  let freq = [];
  let result = 0;
  let index = 0;
  a.forEach(el => {
    if (freq[el] === undefined) freq[el] = 0;
    freq[el] += 1;
  });
  while (index < freq.length) {
    if (freq[index] && freq[index+1]) {
      const summation = freq[index] + freq[index+1]
      if (result < summation) { result = summation; }
    } else {
      if (freq[index] && freq[index] > result) { result = freq[index]; }
    }
    index += 1;
  }
  return result;
}

a = [4, 6, 5, 3, 3, 1];
b = [1, 2, 2, 3, 1, 2];
console.log(pickingNumbers(a));
console.log(pickingNumbers(b));