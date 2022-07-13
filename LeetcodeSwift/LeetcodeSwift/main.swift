import Foundation
// MARK: - Best Time to Buy and Sell Stock
/* You are given an array prices where prices[i] is the price of a given stock on the ith day.
 
 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var maxProfit = 0
    
    for i in 0..<prices.count {
        if prices[i] < minPrice {
            minPrice = prices[i]
        } else if prices[i] - minPrice > maxProfit {
            maxProfit = prices[i] - minPrice
        }
    }
    return maxProfit
}

print(maxProfit([7, 9, 1, 2]))
