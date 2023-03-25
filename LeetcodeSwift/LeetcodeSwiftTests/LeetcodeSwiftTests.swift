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
    
    func testSolution_() {
        // given
        let heights1 = [1,1,4,2,1,3]
        let heights2 = [5,1,2,3,4]
        let heights3 = [1,2,3,4,5]
        
        // when
        let result1 = sut.heightChecker(heights1)
        let result2 = sut.heightChecker(heights2)
        let result3 = sut.heightChecker(heights3)
        
        // then
        let expected1 = 3
        let expected2 = 5
        let expected3 = 0
        
        XCTAssertEqual(result1, expected1)
        XCTAssertEqual(result2, expected2)
        XCTAssertEqual(result3, expected3)
    }
}
