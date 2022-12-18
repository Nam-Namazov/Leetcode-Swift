import Foundation

// MARK: - Jump Game

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var goal = nums.count - 1
        var i = nums.count - 2
        
        while i >= 0 {
            if i + nums[i] >= goal {
                goal = i
            }
            i -= 1
        }
        
        return goal == 0
    }
}

