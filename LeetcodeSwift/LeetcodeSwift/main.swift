import Foundation

// MARK: - Length of Last Word

// Time: O(n), Space: O(1)
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var counter = 0
        
        for character in s.reversed() {
            if character != " " {
                counter += 1
            } else if counter > 0 {
                return counter
            }
        }
        return counter
    }
}
