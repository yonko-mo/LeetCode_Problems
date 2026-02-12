class Solution {
  bool isValid(String s) {
   while (s.contains('()') || s.contains('[]') || s.contains('{}')) {
    s = s.replaceAll('()', '');
    s = s.replaceAll('[]', '');
    s = s.replaceAll('{}', '');
  }
  return s.isEmpty;
  }
}