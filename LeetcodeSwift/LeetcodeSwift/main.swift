import Foundation
 
class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        
        let points = points.sorted { $0[1] < $1[1] }
        var minimumNumberOfArrows = 1
        var xEnd = points[0][1]
        
        if points.count == 1 {
            return 1
        }
        
        for i in 0..<points.count {
            let xStart = points[i][0]
            
            if xEnd < xStart {
                minimumNumberOfArrows += 1
                xEnd = points[i][1]
            }
        }
        
        return minimumNumberOfArrows
    }
}
