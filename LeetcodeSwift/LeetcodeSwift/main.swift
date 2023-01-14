import Foundation
 
class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = Stack()
        var scoresSum = 0
        
        for operation in operations {
            switch operation {
            case "+":
                let sumPreviousTwoScores = stack.peek()! + stack.elements.dropLast().last!
                scoresSum += sumPreviousTwoScores
                stack.push(sumPreviousTwoScores)
            case "C":
                scoresSum -= stack.peek()!
                stack.popLast()
            case "D":
                let doublePreviousScore = 2 * stack.peek()!
                scoresSum += doublePreviousScore
                stack.push(doublePreviousScore)
            default:
                let score = Int(operation)!
                stack.push(score)
                scoresSum += score
            }
        }
        
        return scoresSum
    }
}

final class Stack {
    var elements: [Int] = []
    
    func push(_ element: Int) {
        elements.append(element)
    }
    
    func popLast() -> Int? {
        elements.popLast()
    }
    
    func peek() -> Int? {
        return elements.last
    }
}
