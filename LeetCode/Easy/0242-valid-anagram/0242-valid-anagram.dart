class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
    return false;
  }
   Map<String, int> sCounts = {};
  Map<String, int> tCounts = {};
  for (var element in s.split('')) {
    if (!sCounts.containsKey(element)) {
      sCounts[element] = 1;
    } else {
      sCounts[element] = sCounts[element]! + 1;
    }
  }
  for (var element in t.split('')) {
    if (!tCounts.containsKey(element)) {
      tCounts[element] = 1;
    } else {
      tCounts[element] = tCounts[element]! + 1;
    }
  }
  for (var element in sCounts.entries) {
     if (tCounts[element.key] != element.value) {
      return false;
    }
  }
  return true; 
  }
}