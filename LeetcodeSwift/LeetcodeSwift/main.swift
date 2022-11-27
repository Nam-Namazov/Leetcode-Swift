import Foundation
 
// MARK: - Trapping Rain Water

class Solution {
    func trap(_ height: [Int]) -> Int {
        var leftPointer = 0
        var rightPointer = height.count - 1
        var leftMax = 0
        var rightMax = 0
        var result = 0

        while leftPointer < rightPointer {
            if height[leftPointer] < height[rightPointer] {
                if height[leftPointer] >= leftMax {
                    leftMax = height[leftPointer]
                } else {
                    result += leftMax - height[leftPointer]
                }
                leftPointer += 1
            } else {
                if height[rightPointer] >= rightMax {
                    rightMax = height[rightPointer]
                } else {
                    result += rightMax - height[rightPointer]
                }
                rightPointer -= 1
            }
        }
        
        return result
    }
}
