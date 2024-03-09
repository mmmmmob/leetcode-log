// https://leetcode.com/problems/two-sum/

let twoSum = function (nums, target) {
  let answer = [];
  for (let i = 0; i < nums.length; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] === target) {
        answer.push(i, j);
        break;
      }
    }
  }
  return answer;
};

console.log(twoSum([3, 2, 3], 6)); //expect output [0,2]
console.log(twoSum([2, 7, 11, 15], 9)); //expect output [0,1]
