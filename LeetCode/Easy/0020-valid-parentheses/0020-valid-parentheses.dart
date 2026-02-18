class Solution {
  bool isValid(String s) {
  Map<String, String> brackets = {')': '(', ']': '[', '}': '{'};
  List<String> stack = [];
  for (var char in s.split('')) {
    if (brackets.values.contains(char)) {
      stack.add(char);
    } else {
      String openingBracket = brackets[char]!;
      if (stack.isEmpty || stack.removeLast() != openingBracket) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
}