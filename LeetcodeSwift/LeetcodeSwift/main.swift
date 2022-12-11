import Foundation
 
// MARK: - Find the K-Beauty of a Number

class Solution {
    func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
        var counter = 0
        let arrayNum = String(num).map { String($0) }
        
        for i in 0...arrayNum.count - k {

            if Int(arrayNum[i..<i + k].joined(separator: ""))! != 0,
               num % Int(arrayNum[i..<i + k].joined(separator: ""))! == 0 {
                
                counter += 1
            }
        }
        return counter
    }
}
