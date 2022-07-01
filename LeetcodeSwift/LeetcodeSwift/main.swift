import Foundation
// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next
    }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2

        let head: ListNode = ListNode(0)
        var result = head

        while l1 != nil && l2 != nil {
            let l1Value = l1!.val
            let l2Value = l2!.val

            if l1Value < l2Value {
                result.next = l1
                l1 = l1?.next
            } else {
                result.next = l2
                l2 = l2?.next
            }
            result = result.next!
        }
        result.next = l1 ?? l2
        return head.next
    }
}
