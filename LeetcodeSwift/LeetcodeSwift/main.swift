import Foundation
// MARK: - Binary Tree Level Order Traversal
// Time Complexity: O(n)
// Space Complexity: O(n)

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
// [[1], [3, 2, 4], [5, 6]]
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var queue = [TreeNode?]()
        var result = [[Int]]()
        var index = 0
        
        if root != nil {
            queue.append(root!)
        }
        
        while index < queue.count {
            var count = queue.count
            var level = [Int]()
            
            while index < count {
                var node = queue[index]
                if node!.left != nil {
                    queue.append(node?.left!)
                }
                if node!.right != nil {
                    queue.append(node?.right!)
                }
                level.append(node!.val)
                index += 1
            }
            result.append(level)
        }
        return result
    }
}
