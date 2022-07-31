import Foundation
// MARK: -  Build Array from Permutation

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        guard nums.count != 1 else {
            return nums
        }
        
        var ans = [Int]()
        
        for i in 0..<nums.count {
            ans.append(nums[nums[i]])
        }
        
        return ans
    }
}
