import Foundation
// MARK: -  Intersection of Two Arrays II
// nums1 = [1,2,2,1], nums2 = [2,2] -> [2,2]
// nums1 = [4,9,5], nums2 = [9,4,9,8,4] -> [4, 9] or [9, 4]

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var hashTable1: [Int: Int] = [:]
        var hashTable2: [Int: Int] = [:]
        var result = [Int]()
        
        for num in nums1 {
            if let _ = hashTable1[num] {
                hashTable1[num]! += 1
            } else {
                hashTable1[num] = 1
            }
        }
        
        for num in nums2 {
            if let _ = hashTable2[num] {
                hashTable2[num]! += 1
            } else {
                hashTable2[num] = 1
            }
        }
        
        for (num, count1) in hashTable1 {
            if let count2 = hashTable2[num] {
                let allCount = min(count1, count2)
                for _ in 0..<allCount {
                    result.append(num)
                }
            }
        }
        return result
    }
}
