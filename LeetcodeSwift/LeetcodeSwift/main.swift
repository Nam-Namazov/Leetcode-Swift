import Foundation
// MARK: - Happy Number
// 2 | 2 -> 4 -> 16 -> 37 -> 58 -> 89 -> 145 -> 42 -> 20 -> 4 - loop.
// n = 2 -> false

// 19 | 19 -> 82 -> 68 -> 100 -> 1
// n = 19 -> true

func isHappy(_ n: Int) -> Bool {
    var set = Set<Int>()
    var number = n
    
    while number != 1 {
        guard !set.contains(number) else {
            return false
        }
        set.insert(number)
        
        var temp = 0
        while number != 0 {
            temp += (number % 10) * (number % 10)
            number = number / 10 // 1, 0.
        }
        number = temp
    }
    return true
}

print(isHappy(19))
