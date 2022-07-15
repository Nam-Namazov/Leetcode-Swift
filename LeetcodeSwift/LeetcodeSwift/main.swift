import Foundation
// MARK: - Diameter of binary tree

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
    var diameter = 0
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        maxDepth(root)
        
        return diameter
    }
    
    fileprivate func maxDepth(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        
        let (left, right) = (maxDepth(node.left), maxDepth(node.right))
        
        diameter = max(diameter, left + right)
        
        return max(left, right) + 1
    }
}
