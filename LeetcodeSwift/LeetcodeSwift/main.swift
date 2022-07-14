import Foundation

//MARK: - Move Zeroes
// [0,1,0,3,12] -> [1,3,12,0,0]
//

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var counter = 0
        
        for i in 0..<nums.count {
            if nums[i] != 0 {
                let temp = nums[counter]
                nums[counter] = nums[i]
                nums[i] = temp
                counter += 1
            }
        }
    }
}
