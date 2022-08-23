import Foundation
// MARK: -  Palindrome Linked List
// Time Complexity: O(n)
// Space Complexity: O(1)

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
// [1, 2, 2, 1] - > [1, 2, 2, 1] - true
// [1, 2] -> [2, 1] - false
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var fast: ListNode? = head
        var slow: ListNode? = head
        
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        
        if fast != nil {
            slow = slow?.next
        }
        
        slow = reverse(slow)
        fast = head
        
        while slow != nil {
            if fast?.val != slow?.val {
                return false
            }
            fast = fast?.next
            slow = slow?.next
        }
        return true
    }
    
    private func reverse(_ head: ListNode?) -> ListNode? {
        var head = head
        var prev: ListNode? = nil
        
        while head != nil {
            let next = head?.next
            head?.next = prev
            prev = head
            head = next
        }
        return prev
    }
}
