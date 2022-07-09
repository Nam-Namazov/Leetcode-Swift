import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    
    var result = 0
    
    for i in nums {
        result ^= i
    }
    return result
}

print(singleNumber([2, 2, 1]))

// or

func singleNumber2(_ nums: [Int]) -> Int {
    return nums.reduce(0) { $0 ^ $1 }
}

print(singleNumber([2, 2, 1, 1, 4]))
