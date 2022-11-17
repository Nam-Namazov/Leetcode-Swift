import Foundation

// MARK: - Longest Consecutive Sequence
class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        
        if nums.count == 0 || nums.count == 1 {
            return nums.count
        }

        let hashSet = Set(nums)
        var longestStreak = 0
        
        for num in hashSet {
            if !hashSet.contains(num - 1) {
                var currentNum = num
                var currentStreak = 1
                
                while hashSet.contains(currentNum + 1) {
                    currentNum += 1
                    currentStreak += 1
                }
                
                longestStreak = max(longestStreak, currentStreak)
            }
        }
        
        return longestStreak
    }
}
