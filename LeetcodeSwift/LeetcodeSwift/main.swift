import Foundation
 
class Solution {
    func minimumRounds(_ tasks: [Int]) -> Int {
        var hashMap: [Int: Int] = [:]
        var minimumRoundsCounter = 0

        for i in 0..<tasks.count {
            if hashMap[tasks[i]] == nil {
                hashMap[tasks[i]] = 1
            } else {
                hashMap[tasks[i]]! += 1
            }
        }

        for (_, value) in hashMap {
            if value == 1 {
                return -1
            }
            
            minimumRoundsCounter += (value + 2) / 3
        }
        
        return minimumRoundsCounter
    }
}
