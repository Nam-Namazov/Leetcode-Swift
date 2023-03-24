import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            let targetDifference = target - nums[i]
            
            if hashMap.keys.contains(targetDifference) {
                return [hashMap[targetDifference]!, i]
            } else {
                hashMap[nums[i]] = i
            }
        }
        
        return []
    }
}
