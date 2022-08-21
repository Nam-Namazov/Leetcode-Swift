import Foundation
// MARK: - Remove Dublicates From Sorted Array
// Time Complexity: O(n)
// Space Complexity: O(1)

class Solution1 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var indexResult = 1
        
        for i in 1..<nums.count {
            if nums[i - 1] != nums[i] {
                nums[indexResult] = nums[i]
                indexResult += 1
            }
        }
        return indexResult
    }
}

class Solution2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var indexResult = 0
        
        for i in 1..<nums.count {
            if nums[indexResult] == nums[i] { continue }
            indexResult += 1
            nums[indexResult] = nums[i]
        }
        return indexResult + 1
    }
}
