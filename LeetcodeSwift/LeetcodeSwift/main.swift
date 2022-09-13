import Foundation

// MARK: - Jewels and Stones

// the first solution - O(n^2), O(n)
class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var counter = 0
        
        for i in jewels {
            for j in stones where i == j {
                counter += 1
            }
        }
        return counter
    }
}

// the second solution - O(n), O(n)
class Solution2 {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var counter = 0
        var hashMap: [Character: Int] = [:]
        
        for ch in stones {
            if hashMap[ch] != nil {
                hashMap[ch]! += 1
            } else {
                hashMap[ch] = 1
            }
        }
        
        for ch in jewels {
            if hashMap[ch] != nil {
                counter += hashMap[ch]!
                hashMap[ch]! += 1
            } else {
                hashMap[ch] = 1
            }
        }
        return counter
    }
}
