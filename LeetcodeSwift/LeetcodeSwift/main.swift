import Foundation

// MARK: - Count Number of Pairs With Absolute Difference K

// O(n^2), O(1)
class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
                
        for i in nums {
            for j in nums where i - j == k {
                counter += 1
            }
        }
        return counter
    }
}

// O(n), O(n)
class Solution2 {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
        var hashMap: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            let value = nums[i]
            let absOne = value - k
            let absTwo = k + value
            
            hashMap[absOne] != nil ? (hashMap[absOne] = hashMap[absOne]! + 1) : (hashMap[absOne] = 1)
            hashMap[absTwo] != nil ? (hashMap[absTwo] = hashMap[absTwo]! + 1) : (hashMap[absTwo] = 1)
            if hashMap[value] != nil {
                counter = counter + hashMap[value]!
            }
        }
        return counter
    }
}

