import Foundation
// MARK: - Valid Parantheses

class Solution {
    let dictionary: [Character: Character] = [")": "(", "}": "{", "]": "["]
    
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else {
                guard let lastChar = stack.last, lastChar == dictionary[char]! else {
                    return false
                }
                stack.removeLast()
            }
        }
        return stack.count == 0
    }
}

