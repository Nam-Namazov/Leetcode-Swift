import Foundation

// MARK: - Top K Frequent Elements
// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var result = [Int]()
        var hashMap: [Int: Int] = [:]
        var matrix = Array(repeating: Array(repeating: 0, count: 0), count: nums.count)
        var counter = 0
        
        for i in 0..<nums.count {
            hashMap[nums[i]] = hashMap[nums[i]] == nil ? 1 : hashMap[nums[i]]! + 1
        }
        
        for (key, value) in hashMap {
            matrix[value - 1].append(key)
        }
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[matrix.count - i - 1].count {
                if counter == k {
                    return result
                }
                result.append(matrix[matrix.count - i - 1][j])
                counter += 1
            }
        }
        return result
    }
}
