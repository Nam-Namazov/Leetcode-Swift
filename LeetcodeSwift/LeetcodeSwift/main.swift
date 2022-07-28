import Foundation
// MARK: - Palindromic Substrings
// Time Complexity: O(n^2)
// Space Complexity: O(n^2)

class Solution {
    func countSubstrings(_ s: String) -> Int {
        var s = Array(s)
        var matrix = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        var counter = 0
        
        guard s.count > 1 else {
            return 1
        }
        
        for i in 0..<s.count {
            matrix[i][i] = true
            counter += 1
        }
        
        for i in 0..<s.count - 1 {
            if s[i] == s[i + 1] {
                matrix[i][i + 1] = true
                counter += 1
            }
        }
        
        guard s.count > 2 else {
            return counter
        }
        
        for distance in 2...s.count - 1 {
            for i in 0..<s.count - distance {
                if s[i] == s[i + distance] && matrix[i + 1][i + distance - 1] {
                    matrix[i][i + distance] = true
                    counter += 1
                }
            }
        }
        return counter
    }
}
