import Foundation
// MARK: - Reverse Linked List

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// MARK: - iteratively
// head -> 1 -> 2 -> 3 -> nil
// nil <- 1 -> 2 -> 3 -> nil
// nil <- 1 <- 2 -> 3 -> nil
// nil <- 1 <- 2 <- 3 <- head
// head -> 3 -> 2 -> 1 -> nil
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var nextHead: ListNode? = nil
        var current = head
        
        while current != nil {
            nextHead = current?.next
            current?.next = prev
            prev = current
            current = nextHead
        }
        return prev
    }
}
