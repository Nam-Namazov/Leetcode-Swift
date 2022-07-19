import Foundation
// MARK: - Sort Array By Parity 2

class Solution {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var array = nums
        var odd = 0
        var even = 1
        
        for i in nums {
            if i % 2 == 0 {
                array[odd] = i
                odd += 2
                
            } else {
                array[even] = i
                even += 2
            }
        }
        return array
    }
}
