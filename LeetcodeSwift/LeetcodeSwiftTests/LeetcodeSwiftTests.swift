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
    
    func testSolution_dublicateZeroes() {
        // given
        var arr1 = [1, 0, 2, 3, 0, 4, 5, 0]
        var arr2 = [1, 2, 3]
        
        // when
        sut.duplicateZeros(&arr1)
        sut.duplicateZeros(&arr2)
        
        // then
        let expected1 = [1, 0, 0, 2, 3, 0, 0, 4]
        let expected2 = [1, 2, 3]
        
        XCTAssertEqual(arr1, expected1)
        XCTAssertEqual(arr2, expected2)
    }
}
