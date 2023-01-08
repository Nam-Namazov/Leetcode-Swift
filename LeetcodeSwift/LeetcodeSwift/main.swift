import Foundation

// MARK: - With atan2 solution
class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        
        if points.count == 1 {
            return 1
        }
        
        var result = 2
        
        for i in 0..<points.count {
            var hashMap: [Double: Int] = [:]
            
            for j in 0..<points.count {
                if j != i {
                    hashMap[atan2(Double(points[j][1] - points[i][1]),
                                  Double(points[j][0] - points[i][0])), default: 0] += 1
                }
            }
            
            for value in hashMap.values {
                result = max(result, value + 1)
            }
        }
        
        return result
    }
}


// MARK: - Solution with slope and intercept function
class Solution2 {
    func maxPoints(_ points: [[Int]]) -> Int {

        if points.count == 1 {
            return 1
        }

        var hashTable: [String: Set<[Int]>] = [:]

        for i in 0..<points.count {
            for j in i + 1..<points.count {
                let lineEquation = getLineEquationString(points[i][0], points[i][1], points[j][0], points[j][1])
                if hashTable[lineEquation] == nil {
                    hashTable[lineEquation] = [[points[i][0], points[i][1]], [points[j][0], points[j][1]]]
                } else {
                    hashTable[lineEquation]?.insert([points[i][0], points[i][1]])
                    hashTable[lineEquation]?.insert([points[j][0], points[j][1]])
                }
            }
        }

        var maxVal = 0
        for (_, value) in hashTable {
            if value.count > maxVal {
                maxVal = value.count
            }
        }

        return maxVal
    }
    
    func getLineEquationString(_ x0: Int, _ y0: Int, _ x1: Int, _ y1: Int) -> String {
        if x0 == x1 { return "\(x0),nil" }
        let k = (Double(y1) - Double(y0)) / (Double(x1) - Double(x0))
        let c = Double(y0) - k * Double(x0)
        return "\(k),\(c)"
    }
}
