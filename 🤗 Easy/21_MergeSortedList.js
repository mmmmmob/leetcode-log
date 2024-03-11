// https://leetcode.com/problems/merge-two-sorted-lists/description/

const mergeTwoLists = function (list1, list2) {
  let merged = [...list1, ...list2];
  return merged.sort();
};

console.log(mergeTwoLists([1, 2, 4], [1, 3, 4]));
