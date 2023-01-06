import Foundation

// MARK: - Bucket Sort
class Solution1 {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        
        if costs.count == 1 && costs[0] <= coins { return 1 }
        
        var coins = coins
        var result = 0
        var buckets = [Int](repeating: 0, count: costs.max()! + 1)
        
        for cost in costs {
            buckets[cost] += 1
        }
        
        for i in 0..<buckets.count {
            if coins < i {
                break
            }
            
            if buckets[i] > 0 {
                result += min(buckets[i], coins / i)
                coins -= min(coins, i * buckets[i])
            }
        }
        
        return result
    }
}

// MARK: - Sort
class Solution2 {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        
        if costs.count == 1 && costs[0] <= coins {
            return 1
        }
        
        let costs = costs.sorted()
        var counter = 0
        var costsSum = 0
        
        for i in 0..<costs.count {
            if costsSum + costs[i] <= coins {
                counter += 1
                costsSum = costsSum + costs[i]
            } else {
                break
            }
        }
        
        return counter
    }
}

class Solution3 {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        
        if costs.count == 1 && costs[0] <= coins {
            return 1
        }
        
        let costs = costs.sorted()
        var coins = coins
        var counter = 0
        
        for i in 0..<costs.count {
            if costs[i] <= coins {
                coins -= costs[i]
                counter += 1
            } else {
                break
            }
        }
        
        return counter
    }
}
