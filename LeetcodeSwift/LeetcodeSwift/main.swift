import Foundation
// MARK: - Two Sum

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var findNumber = [Int: Int]()
        
        for i in 0..<nums.count {
            let compliment = target - nums[i]
            if findNumber.keys.contains(compliment) {
                return [findNumber[compliment]!, i]
            }
            findNumber[nums[i]] = i
        }
        return []
    }
}
