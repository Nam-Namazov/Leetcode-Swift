import Foundation

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let word = Array(word)
        var numberOfCapitalLetters = 0
        
        for i in 0..<word.count {
            if word[i].asciiValue! >= 65 && word[i].asciiValue! <= 90 {
                numberOfCapitalLetters += 1
            }
        }
        
        let isWordCapitalized = numberOfCapitalLetters == 1 &&  word[0].asciiValue! >= 65 && word[0].asciiValue! <= 90
        let isAllLettersUppercase = numberOfCapitalLetters == word.count
        let isAllLettersLowercase = numberOfCapitalLetters == 0
        
        return isAllLettersUppercase || isWordCapitalized || isAllLettersLowercase
    }
}
