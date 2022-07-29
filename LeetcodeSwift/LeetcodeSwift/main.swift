import Foundation
// MARK: - N-ary Tree Preorder Traversal
// Time Complexity: O(n)
// Space Complexity: O(log n)

// Definition for a Node.
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        var result = [Int]()
        if let root = root {
            result = [root.val]
            for children in root.children {
                result += preorder(children)
            }
        }
        return result
    }
}
