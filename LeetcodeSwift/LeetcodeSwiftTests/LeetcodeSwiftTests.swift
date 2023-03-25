import XCTest
@testable import LeetcodeSwift

final class LeetcodeSwiftTests: XCTestCase {
    
    var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testSolution_ArrayStringsAreEqual() {
        // given
        let word1 = ["ab", "c"]
        let word2 = ["a", "bc"]
        
        let word3 = ["a", "cb"]
        let word4 = ["ab", "c"]
        
        let word5 = ["abc", "d", "defg"]
        let word6 = ["abcddefg"]
        
        // when
        let result1 = sut.arrayStringsAreEqual(word1, word2)
        let result2 = sut.arrayStringsAreEqual(word3, word4)
        let result3 = sut.arrayStringsAreEqual(word5, word6)
        
        // then
        let expected1 = true
        let expected2 = false
        let expected3 = true
        
        XCTAssertEqual(result1, expected1)
        XCTAssertEqual(result2, expected2)
        XCTAssertEqual(result3, expected3)
    }
}
