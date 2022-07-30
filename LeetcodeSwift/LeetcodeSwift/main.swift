import Foundation
// MARK: - Binary Search
// Time complexity: O(logn) ; Space Complexity: O(1)
// nums = [-1,0,3,5,9,12], target = 9, return index of the target -> 4
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var leftPointer = 0
        var rightPointer = nums.count - 1
        
        while leftPointer <= rightPointer {
            var midValue = leftPointer + (rightPointer - leftPointer) / 2
            if nums[midValue] == target {
                return midValue
            } else if nums[midValue] > target {
                rightPointer = midValue - 1
            } else {
                leftPointer = midValue + 1
            }
        }
        return -1
    }
}
