import Foundation
// MARK: - Longest Common Prefix

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs[0]
        }
        
        let minStr = strs.min()!
        var counter = minStr.count
        let minStrArr = Array(minStr)
        
        for str in strs {
            if str != minStr {
                let tempArr = Array(str)
                var tempCounter = 0
                
                for i in 0..<minStrArr.count {
                    if minStrArr[i] == tempArr[i] {
                        tempCounter += 1
                    } else {
                        break
                    }
                }
                
                if tempCounter == 0 {
                    return ""
                }
                
                if tempCounter < counter {
                    counter = tempCounter
                }
            }
        }
        return String(minStr.prefix(counter))
    }
}
