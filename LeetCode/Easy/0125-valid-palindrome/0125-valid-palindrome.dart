class Solution {
  bool isPalindrome(String s) {
  s = s.toLowerCase().replaceAll(new RegExp(r'[^a-z0-9]'), '').replaceAll(' ', '');
  List<String> newS = s.split('');
  int start = 0;
  int end = newS.length - 1;
  while (start < end) {
    if (newS[start] != newS[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}
}