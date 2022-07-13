import Foundation
// MARK: - Majority Element
/*
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
 [2, 2, 1, 1, 1, 2, 2] 
 */

    func majorityElement(_ nums: [Int]) -> Int {
        var firstElement = nums[0]
        var counter = 0
        
        for i in nums { //
            if i == firstElement {
                counter += 1
            } else {
                counter -= 1
            }
            if counter == 0 {
                firstElement = i
                counter = 1
            }
        }
        return firstElement
    }
    
    print(majorityElement([2, 2, 1, 1, 1, 2, 2]))
