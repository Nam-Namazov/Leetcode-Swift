import Foundation
// MARK: -  Longest Palindrome
// Time Complexity: O(n)
// Space Complexity: O(n)

// "abbc" -> "bab" or "bcb" -> 3
// "a" -> 1
class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var hashMap: [Character: Int] = [:]
        var result = s.count
        var oddValue = false
        
        guard result != 1 else { return 1 }
        
        for character in s {
            hashMap[character, default: 0] += 1
        }
        
        for (key, value) in hashMap {
            if value % 2 == 1 {
                if !oddValue {
                    oddValue = true
                } else {
                    result -= 1
                }
            }
        }
        return result
    }
}
