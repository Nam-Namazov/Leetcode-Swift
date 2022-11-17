import Foundation

// MARK: - Valid Sudoku

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var hashSet = Set<String>()
        
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                let currentCharacter = String(board[i][j])
                
                if currentCharacter == "." { continue }
                
                let column = "\(currentCharacter) row \(j)"
                let row = "\(currentCharacter) column \(i)"
                let boxes = "\(currentCharacter) boxes \(i / 3) \(j / 3)"
                
                if !hashSet.contains(row) {
                    hashSet.insert(row)
                } else {
                    return false
                }
                
                if !hashSet.contains(column) {
                    hashSet.insert(column)
                } else {
                    return false
                }
                
                if !hashSet.contains(boxes) {
                    hashSet.insert(boxes)
                } else {
                    return false
                }
            }
        }
        return true
    }
}
