import Foundation
 
class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        
        let s = s.split(separator: " ")
        var hashMap: [String: String] = [:]
        let pattern = Array(pattern)
        
        if pattern.count != s.count {
            return false
        }
        
        for i in 0..<pattern.count {
            if hashMap[String(pattern[i])] == nil {
                hashMap[String(pattern[i])] = String(s[i])
            }
            
            if hashMap[String(pattern[i])] != String(s[i]) {
                return false
            }
        }
        
        return Set(hashMap.keys).count == Set(hashMap.values).count
    }
}
