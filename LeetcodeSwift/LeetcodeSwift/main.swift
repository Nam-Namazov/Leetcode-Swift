import Foundation
// MARK: - Middle of the Linked List
// Time Complexity: O(n)
// Space Complexity: O(1)

// Definition for singly-linked list
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// head = [1, 2, 3, 4, 5] -> the middle node = 3 -> output: [3, 4, 5]
// head = [1, 2, 3, 4, 5, 6] -> the middle node = 4 -> output: [4, 5, 6]
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow: ListNode? = head
        var fast: ListNode? = head
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
