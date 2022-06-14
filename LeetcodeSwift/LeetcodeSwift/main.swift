import Foundation
// MARK:  Root Equals Sum of Children
// You are given the root of a binary tree that consists of exactly 3 nodes: the root, its left child, and its right child. Return true if the value of the root is equal to the sum of the values of its two children, or false otherwise.
// The tree consists only of the root, its left child, and its right child.
// [10, 6, 4] 10 = 6 + 4 ? true
// [5, 3, 1] 5 = 3 + 1 ? false


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func checkTree(_ root: TreeNode?) -> Bool {
        // or return root!.val == root!.left!.val + root!.right!.val
        
        if let root = root, let left = root.left, let right = root.right {
            if root.val == left.val + right.val {
                return true
            }
        }
        return false
    }
}
