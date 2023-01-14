import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 { return false }
        
        let stack = Stack()
        
        for bracket in s {
            switch bracket {
            case "(":
                stack.push(")")
            case "{":
                stack.push("}")
            case "[":
                stack.push("]")
            default:
                if bracket != stack.popLast() { return false }
            }
        }
        
        return stack.isEmpty()
    }
}

final class Stack {
    private var elements: [Character] = []
    
    func push(_ x: Character) {
        elements.append(x)
    }
    
    func popLast() -> Character? {
        elements.popLast()
    }
    
    func isEmpty() -> Bool {
        elements.isEmpty
    }
}
