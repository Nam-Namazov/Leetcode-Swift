import Foundation
// MARK: - Running Sum of 1d Array

// [1, 2, 3, 4] -> [1, 3, 6, 10]
func runningSum(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<nums.count {
        var counter = 0
        for j in 0...i {
            counter += nums[j]
        }
        result.append(counter)
    }
    return result
}

print(runningSum([1, 2, 3, 4]))


func runningSum2(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var sum = 0
    
    for number in nums {
        sum += number
        result.append(sum)
    }
    return result
}

print(runningSum2([1, 2, 3, 4]))
