import Foundation

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        // MARK: -  One line solution: word1.joined() == word2.joined()
        
        
        // MARK: - Second solution
        
        var concatenatedWord1 = ""
        var concatenatedWord2 = ""
        
        for string in word1 {
            concatenatedWord1.append(string)
        }
        
        for string in word2 {
            concatenatedWord2.append(string)
        }
        
        return concatenatedWord1 == concatenatedWord2
    }
}
