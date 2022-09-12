import Foundation

// MARK: - Number of Good Pairs

// The first solution - O(n^2), O(n)
class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var counter = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count where i < j {
                if nums[i] == nums[j] {
                    counter += 1
                }
            }
        }
        return counter
    }
}

// The second solution - O(n), O(n)
class Solution2 {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var hashMap: [Int: Int] = [:]
        var counter = 0
        
        for i in 0..<nums.count {
            if hashMap[nums[i]] != nil {
                counter += hashMap[nums[i]]!
                hashMap[nums[i]]! += 1
            } else {
                hashMap[nums[i]] = 1
            }
        }
        return counter
    }
}
