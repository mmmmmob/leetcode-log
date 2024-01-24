// https://leetcode.com/problems/counter

// This problem using JS feature called "Closure Function"

var createCounter = function (n) {
  return function () {
    return n++;
  };
};

const counter = createCounter(10);
console.log(counter());
console.log(counter());
console.log(counter());
