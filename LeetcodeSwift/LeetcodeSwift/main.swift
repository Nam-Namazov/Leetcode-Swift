import Foundation

// MARK: - Longest Substring Without Repeating Characters

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var set = Set<Character>()
        var left = 0
        var right = 0
        var result = 0
        
        while right < s.count {
            if set.contains(s[right]) {
                set.remove(s[left])
                left += 1
            } else {
                set.insert(s[right])
                result = result > right - left + 1 ? result : right - left + 1
                right += 1
            }
        }
        return result
    }
}
