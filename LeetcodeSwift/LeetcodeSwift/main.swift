import Foundation
// MARK: - Linked List Cycle
// Time Complexity: O(n)
// Space Complexity: O(1)
//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
//              slow
// 2 pointers: [1, 2, 3, 4], if fast === slow -> listnode have cycle -> return true
//                    fast
class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        
        while fast != nil && fast!.next != nil {
            slow = slow!.next
            fast = fast?.next?.next
            
            if slow === fast {
                return true
            }
        }
        return false
    }
}
