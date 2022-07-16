import Foundation
// MARK: - Roman To Integer
class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0
        let s = Array(s)
        
        for i in 0..<s.count {
            let currentChar = s[i]
            let currentInt = dict[currentChar]!
            
            if i == s.count - 1 {
                result += currentInt
                break
            }
            
            let nextChar = s[i + 1]
            let nextInt = dict[nextChar]!
            
            if currentInt < nextInt {
                result += -currentInt
            } else {
                result += currentInt
            }
        }
        return result
    }
}
