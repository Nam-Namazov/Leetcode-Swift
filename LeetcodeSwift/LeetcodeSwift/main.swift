import Foundation

// MARK: - Number of Arithmetic Triplets

// O(n^3), O(1)
class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var counter = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                for k in 0..<nums.count where i < j && j < k {
                    if nums[j] - nums[i] == diff && nums[k] - nums[j] == diff {
                        counter += 1
                    }
                }
            }
        }
        return counter
    }
}
