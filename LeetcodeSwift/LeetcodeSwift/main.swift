import Foundation

// MARK: - Substrings of Size Three with Distinct Characters

class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        if s.count < 3 { return 0 }
        let s = Array(s)
        var count = 0
        for i in 0..<s.count-2 {
            if s[i] != s[i+1] && s[i] != s[i+2] && s[i+1] != s[i+2] {
                count += 1
            }
        }
        return count
    }
}
