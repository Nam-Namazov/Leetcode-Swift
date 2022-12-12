import Foundation

// MARK: - Squares of a Sorted Array
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var left = 0
        var right = nums.count - 1

        while left <= right {
            if abs(nums[left]) > abs(nums[right]) {
                result.append(squareOf(nums[left]))
                left += 1
            } else {
                result.append(squareOf(nums[right]))
                right -= 1
            }
        }

        return result.reversed()
    }

    private func squareOf(_ number: Int) -> Int {
        number * number
    }
}
