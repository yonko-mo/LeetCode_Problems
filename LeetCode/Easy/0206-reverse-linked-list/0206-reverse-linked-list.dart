/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? previous = ListNode();
    ListNode? current = ListNode();
    previous = null;
    current = head;
    while (current != null) {
      ListNode? next = current.next;
      current.next = previous;
      previous = current;
      current = next;
  }
  return previous;
}
}