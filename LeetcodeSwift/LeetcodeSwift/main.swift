import Foundation
// MARK: - First Bad Version
// The knows API is defined in the parent class VersionControl.
//     func isBadVersion(_ version: Int) -> Bool{}

// Time Complexity: O(logn), Space Complexity: O(1)
class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while left < right {
            var mid = left + (right - left) / 2
            isBadVersion(mid) ? (right = mid) : (left = mid + 1)
        }
        
        if left == right && isBadVersion(left) {
            return left
        }
        return -1
    }
}
