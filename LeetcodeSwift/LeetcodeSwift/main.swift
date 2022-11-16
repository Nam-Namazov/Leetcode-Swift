import Foundation

// MARK: - Product of Array Except Self
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var prefix = [nums[0]]
        var postfix = [nums.last!]
        
        for i in 1..<nums.count {
            prefix.append(prefix.last! * nums[i])
        }
        
        for i in 1..<nums.count {
            postfix.append(postfix.last! * nums[nums.count - i - 1])
        }
        
        let reversedPostfix = Array(postfix.reversed())
        
        for i in 0..<nums.count {
            if i == 0 {
                result.append(1 * reversedPostfix[i + 1])
            } else if i == nums.count - 1 {
                result.append(prefix[i - 1] * 1)
            } else {
                result.append(prefix[i - 1] * reversedPostfix[i + 1])
            }
        }
        
        return result
    }
}
