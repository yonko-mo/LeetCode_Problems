class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

  for (var n in nums) {
    result ^= n;
  }
  return result;
  }
}