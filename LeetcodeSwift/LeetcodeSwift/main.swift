import Foundation

// MARK: - Valid Palindrome

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        
        let stringArray = Array(s)
        var leftPointer = 0
        var rightPointer = stringArray.count - 1
        
        while leftPointer < rightPointer {
            if !stringArray[leftPointer].isLetter && !stringArray[leftPointer].isNumber {
                leftPointer += 1
                continue
            }
            
            if !stringArray[rightPointer].isLetter && !stringArray[rightPointer].isNumber {
                rightPointer -= 1
                continue
            }
            
            guard stringArray[leftPointer].lowercased() == stringArray[rightPointer].lowercased() else {
                return false
            }
            
            leftPointer += 1
            rightPointer -= 1
        }
        
        return true
    }
}
