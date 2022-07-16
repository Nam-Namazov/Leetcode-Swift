import Foundation
// MARK: - Palindrome Number

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        if x < 10 { return true }
        
        var result = 0
        var temp = x
        
        while temp != 0 {
            result = (result * 10) + (temp % 10)
            temp = temp / 10
        }
        return result == x
    }
}
