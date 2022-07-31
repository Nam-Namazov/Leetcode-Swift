import Foundation
// MARK: - Validate Binary Search Tree
// Time Complexity: O(n), Space Complexity: O(n)

// Definition for a binary tree node.
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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return dfs(root, nil, nil)
    }
    
    private func dfs(_ node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        guard let node = node else {
            return true
        }
        
        if let min = min, node.val <= min {
            return false
        }
        
        if let max = max, node.val >= max {
            return false
        }
        
        return dfs(node.left, min, node.val) && dfs(node.right, node.val, max)
    }
}
