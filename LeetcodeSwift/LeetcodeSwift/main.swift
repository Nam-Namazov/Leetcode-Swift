import Foundation

//Definition for a binary tree node.
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func isMirror(left: TreeNode?, right: TreeNode?) -> Bool {
            if left == nil && right == nil { return true }
            guard let left = left,
                  let right = right else { return false }
            return left.val == right.val &&
            isMirror(left: left.left,right: right.right) &&
            isMirror(left: left.right, right: right.left)
        }
        return isMirror(left: root, right: root)
    }
}
