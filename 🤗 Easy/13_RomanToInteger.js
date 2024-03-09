// https://leetcode.com/problems/roman-to-integer/

// [done] normal case => .split('') then identify each roman to num and sum up
// I = 1
// V = 5
// L = 50
// C = 100
// D = 500
// M = 1000

// exceptional case => reduction, check if any of these is before specific letter or not. If so, reduct
// I before V / X
// X before L / C
// C before D / M

// declare resut variable to store sum of number
// switch case for each letter => define to number

let romanToInt = function (s) {
  let result = 0;
  let toNum = s.split("");

  for (each of toNum) {
    switch (each) {
      case "I":
        result += 1;
        break;
      case "V":
        result += 5;
        break;
      case "L":
        result += 50;
        break;
      case "C":
        result += 100;
        break;
      case "D":
        result += 500;
        break;
      case "M":
        result += 1000;
        break;
    }
  }

  if (s.includes("IV") || s.includes("IX")) {
    result -= 2;
  }

  if (s.includes("XL") || s.includes("XC")) {
    result -= 20;
  }

  if (s.includes("CD") || s.includes("CM")) {
    result -= 200;
  }

  return result;
};

console.log(romanToInt("MCMXCIV"));
