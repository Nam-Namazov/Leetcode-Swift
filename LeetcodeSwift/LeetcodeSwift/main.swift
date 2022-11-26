import Foundation

// MARK: - Container With Most Water
 
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var leftPointer = 0
        var rightPointer = height.count - 1
        
        while leftPointer < rightPointer {
            
            let newArea = (rightPointer - leftPointer) * min(height[leftPointer], height[rightPointer])
            if newArea > maxArea {
                maxArea = newArea
            }
            
            if height[leftPointer] < height[rightPointer] {
                leftPointer += 1
            } else {
                rightPointer -= 1
            }
        }
        
        return maxArea
    }
}
