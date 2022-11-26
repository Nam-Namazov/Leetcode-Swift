import Foundation
 
// MARK: - Two Sum II - Input Array Is Sorted

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftPointer = 0
        var rightPointer = numbers.count - 1
        
        while numbers[leftPointer] + numbers[rightPointer] != target {
            if numbers[leftPointer] + numbers[rightPointer] > target {
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }
        
        return [leftPointer + 1, rightPointer + 1]
    }
}

