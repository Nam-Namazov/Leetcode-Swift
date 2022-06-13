import Foundation
// MARK:  Maximum Depth of Binary Tree

// Given the root of a binary tree, return its maximum depth.A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
//
//Algorithm
//The algorithm uses recursion to calculate the maximum height:
//
//Recursively calculate the height of the tree to the left of the root.
//Recursively calculate the height of the tree to the right of the root.
//Pick the larger height from the two answers and add one to it (to account for the root node).

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
*
 

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        // or: 
        // guard let root = root else {
        //     return 0
        // }
        // return 1 + max(maxDepth(root.left), maxDepth(root.right))
        
        return root == nil ? 0 : 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }
}

