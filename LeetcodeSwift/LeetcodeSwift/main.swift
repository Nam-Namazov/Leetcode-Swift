import Foundation

class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        
        if costs.count == 1 && costs[0] <= coins {
            return 1
        }
        
        let costs = costs.sorted()
        var counter = 0
        var costsSum = 0
        
        for i in 0..<costs.count where costsSum + costs[i] <= coins {
            counter += 1
            costsSum = costsSum + costs[i]
        }
        
        return counter
    }
}

class Solution2 {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        
        if costs.count == 1 && costs[0] <= coins {
            return 1
        }
        
        let costs = costs.sorted()
        var coins = coins
        var counter = 0
        
        for i in 0..<costs.count where costs[i] <= coins {
            coins -= costs[i]
            counter += 1
        }
        
        return counter
    }
}
