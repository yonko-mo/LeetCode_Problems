class Solution {
  bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }
  Map<String, int> sMapCount = {};
  Map<String, int> tMapCount = {};
  for (var i = 0; i < s.length; i++) {
    String sChar = s[i];
    String tChar = t[i];
    sMapCount[sChar] = (sMapCount[sChar] ?? 0) + 1;
    tMapCount[tChar] = (tMapCount[tChar] ?? 0) + 1;
  }
  for (var i = 0; i < t.length; i++) {
    String tChar = t[i];
    if (sMapCount[tChar] != tMapCount[tChar]) {
      return false;
    }
  }
  return true;
}
}