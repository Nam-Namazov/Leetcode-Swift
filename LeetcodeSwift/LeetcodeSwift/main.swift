import Foundation
 
// MARK: - Minimum Recolors to get k consecutive black blocks

class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var min = Int.max
        let blocks = Array(blocks)

        for i in 0...blocks.count - k {
            var counter = 0

            for j in 0..<k {
                if blocks[i + j] == "W" {
                    counter += 1
                }
            }

            if counter < min {
                min = counter
            }
        }
        return min
    }
}
