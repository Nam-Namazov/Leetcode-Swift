import Foundation

// MARK: - Check if the Sentence Is Pangram

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        let alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")
        var counter = 0
        
        for alphabet in alphabetArray {
            if sentence.contains(alphabet) {
                counter += 1
            }
        }
        return counter == alphabetArray.count
    }
}

class Solution2 {
    func checkIfPangram(_ sentence: String) -> Bool {
        var hashMap: [Character: Int] = [:]
        
        for char in "abcdefghijklmnopqrstuvwxyz" {
            hashMap[char] = 1
        }
        
        for char in sentence {
            if hashMap[char] != nil {
                hashMap.removeValue(forKey: char)
            }
        }
        return hashMap.isEmpty
    }
}

class Solution3 {
    func checkIfPangram(_ sentence: String) -> Bool {
        return Set(sentence).count == 26
    }
}
