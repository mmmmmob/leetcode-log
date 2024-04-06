// https://leetcode.com/problems/palindrome-number/
let isPalindrome = function (x) {
  return x.toString().split("").reverse().join("") === x.toString();
};

console.log(isPalindrome(10101));
