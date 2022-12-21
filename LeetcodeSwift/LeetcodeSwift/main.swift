import Foundation
 
// MARK: - Invert Tree
// O(n) - Time Complexity
// O(n) - Space Complexity

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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        _invertTree(root)
        return root
    }
    
    private func _invertTree(_ node: TreeNode?) {
        if node == nil { return }
        
        _invertTree(node?.left)
        _invertTree(node?.right)
        
        if node?.left != nil && node?.right == nil {
            node?.right = node?.left
            node?.left = nil
        } else if node?.left == nil && node?.right != nil {
            node?.left = node?.right
            node?.right = nil
        } else if node?.left != nil && node?.right != nil {
            let temp = node?.left
            node?.left = node?.right
            node?.right = temp
        }
    }
}
