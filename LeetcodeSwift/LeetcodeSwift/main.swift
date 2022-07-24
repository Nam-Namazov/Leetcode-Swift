import Foundation
// MARK: - Find Pivot Index
// [1, 7, 3, 6, 5, 6] -> nums[3]
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var allSum = 0
        var leftSum = 0
        
        for num in nums {
            allSum += num
        }
        
        for i in 0..<nums.count {
            if allSum - leftSum - nums[i] == leftSum {
                return i
            } else {
                leftSum += nums[i]
            }
        }
        return -1
    }
}
