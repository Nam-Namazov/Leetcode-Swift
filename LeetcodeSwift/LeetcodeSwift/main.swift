import Foundation
 
// MARK: - Minimum Difference Between Highest and Lowest of K Scores
class Solution {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        let k = k - 1
        var min = Int.max
        
        for i in 0..<nums.count - k {
            if nums[i + k] - nums[i] < min {
                min = nums[i + k] - nums[i]
            }
        }
        return min
    }
}
