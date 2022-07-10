import Foundation
// Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
// [3, 0, 1]

func missingNumber(_ nums: [Int]) -> Int {
    var sumOfNumbers = (nums.count * (nums.count + 1)) / 2
    
    for num in nums {
        sumOfNumbers -= num
    }
    return sumOfNumbers
}

print(missingNumber([3, 0, 1]))
