import Foundation
// MARK: - contains dublicate
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

func containsDuplicate(_ nums: [Int]) -> Bool {
    var hashTable: [Int: Bool] = [:]
    
    for i in 0..<nums.count {
        if hashTable[nums[i]] != nil {
            return true
        } else {
            hashTable[nums[i]] = true
        }
    }
    return false
}

print(containsDuplicate([4, 3, 2, 1, 1]))

// or

func containsDuplicate2(_ nums: [Int]) -> Bool {
    var hashTable: [Int: Bool] = [:]
    
    for i in nums {
        if hashTable[i] == true {
            return true
        } else {
            hashTable[i] = true
        }
    }
    return false
}

print(containsDuplicate2([1, 2, 3, 4, 1]))
