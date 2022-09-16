import Foundation

// MARK: - Find All Duplicates in an Array

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var hashMap: [Int: Int] = [:]
        
        for num in nums {
            if hashMap[num] != nil {
                hashMap[num]! += 1
            } else {
                hashMap[num] = 1
            }
        }
        
        for (key, value) in hashMap {
            if value == 2 {
                result.append(key)
            }
        }
        return result
    }
}
