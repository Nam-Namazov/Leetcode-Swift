import Foundation

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var L = 0
        
        while L < arr.count {
            if arr[L] == 0 {
                arr.removeLast()
                arr.insert(0, at: L)
                L += 2
            } else {
                L += 1
            }
        }
    }
}
