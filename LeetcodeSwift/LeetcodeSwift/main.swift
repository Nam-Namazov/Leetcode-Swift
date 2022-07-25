import Foundation
// MARK: -  Is Subsequence
// s = "abc", t = "ahbgdc" -> true || s = "axc", t = "ahbgdc" -> false
// Time complexity: O(n)
// Space complexity: O(n)

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let arrayS = Array(s)
        var indexCounter = 0
        
        if s.count == 0 {
            return true
        }
        
        for i in t {
            if arrayS[indexCounter] == i {
                indexCounter += 1
                if indexCounter == arrayS.count {
                    return true
                }
            }
        }
        return false
    }
}
