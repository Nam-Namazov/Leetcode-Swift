import Foundation

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if s.count == 1 || numRows == 1 { return s }
        let s = Array(s)
        var result = String()
        let charsInSection = 2 * (numRows - 1)
        
        for currRow in 0..<numRows {
            var index = currRow
            
            while index < s.count {
                result.append(String(s[index]))
                
                if currRow != 0 && currRow != numRows - 1 {
                    let charsInBetween = charsInSection - 2 * currRow
                    let secondIndex = index + charsInBetween
                    
                    if secondIndex < s.count {
                        result.append(String(s[secondIndex]))
                    }
                }
                index += charsInSection
            }
        }
        return result
    }
}

