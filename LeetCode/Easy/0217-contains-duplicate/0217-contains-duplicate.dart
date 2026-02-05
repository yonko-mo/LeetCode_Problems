class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, int> duplicates = {};
  for (var i = 0; i < nums.length; i++) {
    int numberToCheck = nums[i];
    if (duplicates.containsKey(numberToCheck)) {
      duplicates[numberToCheck] = duplicates[numberToCheck]! + 1;
    } else {
      duplicates[numberToCheck] = 1;
    }
  }
  for (var value in duplicates.values) {
    if (value > 1) {
      return true;
    }
  }
  return false;
  }
}