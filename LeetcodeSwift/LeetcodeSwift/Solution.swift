import Foundation

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        var L = 0
        var R = nums.count - n
        var isShuffle = true
        
        while R < nums.count {
            if isShuffle {
                result.append(nums[L])
                L += 1
                isShuffle = false
            } else {
                result.append(nums[R])
                R += 1
                isShuffle = true
            }
        }
        
        return result
    }
}
