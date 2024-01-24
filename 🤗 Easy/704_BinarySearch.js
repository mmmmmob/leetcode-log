const search = function (nums, target) {
  let length = nums.length;
  for (i = 0; i <= length; i++) {
    if (nums[i] === target) {
      return i;
    }
  }
  return -1;
};

let result = search([-1, 0, 3, 5, 9, 12], 3);
console.log(result);
