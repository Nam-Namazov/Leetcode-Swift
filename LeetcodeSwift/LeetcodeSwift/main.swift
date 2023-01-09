import Foundation

// MARK: - Binary Tree Preorder Traversal iterative solution
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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil { return [] }
        var preorderTraversalResult = [Int]()
        var stack = [TreeNode]()
        stack.append(root!)

        while !stack.isEmpty {
            let node = stack.removeLast()
            preorderTraversalResult.append(node.val)
            if let rightNode = node.right {
                stack.append(rightNode)
            }
            if let leftNode = node.left {
                stack.append(leftNode)
            }
        }
        return preorderTraversalResult
    }
}
