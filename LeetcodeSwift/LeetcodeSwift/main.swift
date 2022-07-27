import Foundation
// MARK: - Linked List Cycle 2
// Time Complexity: O(n)
// Space Complexity: O(1)

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return nil }
        
        var slow = head
        var fast = head
        
        while fast != nil && fast!.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                slow = head
                break
            }
        }
        
        while slow !== fast {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
}
