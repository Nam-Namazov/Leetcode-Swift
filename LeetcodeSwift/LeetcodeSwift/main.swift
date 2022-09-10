import Foundation

// MARK: - How Many Numbers Are Smaller Than the Current Number
// O(n)
// O(n^2)

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for _ in 0..<nums.count {
            result.append(0)
        }

        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] > nums[j] {
                    result[i] += 1
                }
            }
        }
        return result
    }
}
