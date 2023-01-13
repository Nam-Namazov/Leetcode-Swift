import Foundation
 
class Solution {
    func countSubTrees(_ n: Int, _ edges: [[Int]], _ labels: String) -> [Int] {
        var adjacencyList: [[Int]] = Array(repeating: [], count: n)
        var result: [Int] = Array(repeating: 0, count: n)
        var isVisited: [Bool] = Array(repeating: false, count: n)
        let labels = Array(labels)

        for edge in edges {
            let currentNode = edge[0]
            let neighbor = edge[1]

            adjacencyList[currentNode].append(neighbor)
            adjacencyList[neighbor].append(currentNode)
        }
        
        func dfs(_ vertex: Int, _ adjacencyList: [[Int]]) -> [Character: Int] {
            isVisited[vertex] = true
            var alphabetHashMap: [Character: Int] = [:]
            
            for adjv in adjacencyList[vertex] {
                if !isVisited[adjv] {
                    let dict = dfs(adjv, adjacencyList)
                    for (key, value) in dict {
                        alphabetHashMap[key] = alphabetHashMap[key, default: 0] + value
                    }
                }
            }
            
            alphabetHashMap[labels[vertex]] = alphabetHashMap[labels[vertex], default: 0] + 1
            result[vertex] = alphabetHashMap[labels[vertex]]!
            return alphabetHashMap
        }
        
        dfs(0, adjacencyList)
        return result
    }
}
