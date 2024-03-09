// https://leetcode.com/problems/palindrome-number/
let isPalindrome = function (x) {
  if (x.toString().split("").reverse().join("") === x.toString()) {
    return true;
  } else return false;
};

console.log(isPalindrome(100021));
