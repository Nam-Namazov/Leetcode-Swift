import Foundation
// MARK: - Backspace String Compare

class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        
        var resultS = ""
        for c in s {
            if c != "#" {
                resultS.append(c)
            } else if !resultS.isEmpty {
                resultS.removeLast()
            }
        }
        
        var resultT = ""
        for c in t {
            if c != "#" {
                resultT.append(c)
            } else if !resultT.isEmpty {
                resultT.removeLast()
            }
        }
        
        return resultS == resultT
    }
}
