import Foundation
// MARK: - Plus one

// [1, 9, 9]
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var remainder = 1
        var result = [Int]()
        
        for i in 0..<digits.count {
            if digits[digits.count - 1 - i] + remainder == 10 {
                result.insert(0, at: 0)
            } else {
                result.insert(digits[digits.count - 1 - i] + remainder, at: 0)
                remainder = 0
            }
        }
        if remainder == 1 {
            result.insert(1, at: 0)
        }
        return result
    }
}
print(plusOne([1, 9, 9]))
