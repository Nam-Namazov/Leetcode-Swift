import Foundation

// Pascal's Triangle
// 5 ->[ [1],
//      [1, 1],
//      [1, 2, 1],
//      [1, 3, 3, 1],
//      [1, 4, 6, 4, 1]
//      ]

    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else { return [] }
        if numRows == 1 { return [[1]] }
        
        var result = [[1]]
        
        for line in 1..<numRows {
            var nextRow = [1]
            let prevRow = result[line - 1]
            
            for number in 1..<prevRow.count {
                let sum = prevRow[number] + prevRow[number - 1]
                nextRow.append(sum)
            }
            nextRow.append(1)
            result.append(nextRow)
        }
        return result
    }

let solution = generate(5)
print(solution)
