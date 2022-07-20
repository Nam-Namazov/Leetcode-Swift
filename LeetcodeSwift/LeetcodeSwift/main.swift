import Foundation
// MARK: - Isomorphic Strings

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var hashTable = [Character: String.Index]()
        var hashTable2 = [Character: String.Index]()
        
        for i in s.indices {
            guard hashTable[s[i]] == hashTable2[t[i]] else {
                return false
            }
            hashTable[s[i]] = i
            hashTable2[t[i]] = i
        }
        return true
    }
}


 class Solution2 {
     func isIsomorphic(_ s: String, _ t: String) -> Bool {
         var hashTable: [Character: Character] = [:]
         let arrayS = Array(s)
         let arrayT = Array(t)
        
         for i in 0..<arrayS.count {
             if let dict = hashTable[arrayS[i]] {
                 if dict != arrayT[i] {
                     return false
                 }
             } else if hashTable.values.contains(arrayT[i]) {
                 return false
             } else {
                 hashTable[arrayS[i]] = arrayT[i]
             }
         }
         return true
     }
 }
