import Foundation
 
// MARK: - Minimum Time to Collect All Apples in a Tree
// O(n), O(n)

class Solution {
    func minTime(_ n: Int, _ edges: [[Int]], _ hasApple: [Bool]) -> Int {
        var adjacencyList: [[Int]] = Array(repeating: [], count: n)
        
        for edge in edges {
            let currentNode = edge[0]
            let neighbor = edge[1]

            adjacencyList[currentNode].append(neighbor)
            adjacencyList[neighbor].append(currentNode)
        }
        
        func dfs(_ currentNode: Int, _ parentNode: Int) -> Int {
            var time = 0
            
            for child in adjacencyList[currentNode] {
                if child == parentNode { continue }
                
                let childTime = dfs(child, currentNode)
                
                if childTime > 0 || hasApple[child] {
                    time += 2 + childTime
                }
            }
            return time
        }
        
        return dfs(0, -1)
    }
}

let solution = Solution()
print(solution.minTime(7, [[0,1], [0,2], [1,4], [1,5], [2,3], [2,6]], [false, false, true, false, true, true, false]))
