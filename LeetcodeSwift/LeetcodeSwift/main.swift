import Foundation
 
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in 1...nums.count {
            if !nums.contains(i) {
                result.append(i)
            }
        }
        
        return result
    }
}
