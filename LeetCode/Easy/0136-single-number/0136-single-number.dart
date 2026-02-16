class Solution {
  int singleNumber(List<int> nums) {
   Map<int, int> count = {};
  for (var element in nums) {
    count[element] = (count[element] ?? 0) + 1;
  }
  int result = 0;
  for (var element in count.entries) {
    if (element.value == 1) {
      result = element.key;
      break;
    }
  }
  return result; 
  }
}