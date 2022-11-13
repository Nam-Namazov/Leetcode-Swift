import Foundation

// MARK: -  Group Anagrams
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashMap: [[Character]: [String]] = [:]
        var result = [[String]]()
        
        for word in strs {
            let wordSorted = word.sorted()
            
            if hashMap[wordSorted] == nil {
                hashMap[wordSorted] = [word]
            } else {
                hashMap[wordSorted]?.append(word)
            }
        }
        
        for (_, value) in hashMap {
            result.append(value)
        }
        
        return result
    }
}
