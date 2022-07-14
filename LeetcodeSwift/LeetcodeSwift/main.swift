import Foundation
// MARK: - First Unique Character in a String
// leelcode -> 0 else -> -1
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let s = Array(s)
        var hashTable: [Character: Int] = [:]
        
        for i in 0..<s.count {
            hashTable[s[i]] = hashTable[s[i]] == nil ? i : -1
        }
        
        for i in 0..<s.count {
            if hashTable[s[i]] != -1 {
                return i
            }
        }
        return -1
    }
}
