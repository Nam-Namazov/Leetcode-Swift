import Foundation
// MARK: - Delete node in a linked list
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 *
 * Write a function to delete a node in a singly-linked list. You will not be given access to the head of the list, instead you will be given access to the node to be deleted directly.
    It is guaranteed that the node to be deleted is not a tail node in the list.
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node!.next = node!.next!.next
    }
}
