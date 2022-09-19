import Foundation
// MARK: - contains dublicate
// all are O(n), O(n)

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            if hashMap[nums[i]] != nil {
                return true
            } else {
                hashMap[nums[i]] = 1
            }
        }
        return false
    }
}

class Solution2 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashSet = Set<Int>()
        
        for i in 0..<nums.count {
            if hashSet.contains(nums[i]) {
                return true
            } else {
                hashSet.insert(nums[i])
            }
        }
        return false
    }
}

class Solution3 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}
