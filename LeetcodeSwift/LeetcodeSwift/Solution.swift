import Foundation

class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        
        if heights.count == 1 { return 0 }
        
        let expected = countingSort(heights)
        var counter = 0
        
        for i in 0..<heights.count {
            if heights[i] != expected[i] {
                counter += 1
            }
        }
        
        return counter
    }
    
    private func countingSort(_ array: [Int]) -> [Int] {
        let maxElement = array.max()!
        var countArray = Array(repeating: 0, count: maxElement + 1)
        
        for element in array {
            countArray[element] += 1
        }
        
        var sortedArray = [Int]()
        var i = 0
        
        while i < countArray.count {
            let count = countArray[i]
            sortedArray.append(contentsOf: Array(repeating: i, count: count))
            i += 1
        }
        
        return sortedArray
    }
}
