import Foundation

// MARK: - Find All Lonely Numbers in the Array

class Solution {
    func findLonely(_ nums: [Int]) -> [Int] {
        var hashMap: [Int: Int] = [:]
        var result = [Int]()
        
        for num in nums {
            if hashMap[num] != nil {
                hashMap[num]! += 1
            } else {
                hashMap[num] = 1
            }
        }
        
        for (key, _) in hashMap {
            if hashMap[key - 1] == nil &&
                hashMap[key + 1] == nil &&
                hashMap[key] == 1 {
                result.append(key)
            }
        }
        return result
    }
}



