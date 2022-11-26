import Foundation

// MARK: - 3Sum

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var result: [[Int]] = []
        
        if nums.count < 3 {
            return []
        }
        
        for i in 0..<sortedNums.count {
            var leftPointer = i + 1
            var rightPointer = sortedNums.count - 1
            
            while leftPointer < rightPointer {
                let sum = sortedNums[i] + sortedNums[leftPointer] + sortedNums[rightPointer]
                
                if sum == 0 {
                    result.append([sortedNums[i], sortedNums[leftPointer], sortedNums[rightPointer]])
                    leftPointer += 1
                } else if sum < 0 {
                    leftPointer += 1
                } else {
                    rightPointer -= 1
                }
            }
        }
        
        return Array(Set(result))
    }
}
