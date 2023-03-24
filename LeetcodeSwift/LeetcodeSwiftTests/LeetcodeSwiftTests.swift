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
    
    func testSolution_Shuffle() {
        
        // given
        
        let nums1 = [2, 5, 1, 3, 4, 7]
        let nums2 = [1, 2, 3, 4, 4, 3, 2, 1]
        let nums3 = [1, 1, 2, 2]
        
        let n1 = 3
        let n2 = 4
        let n3 = 2
        
        // when
        
        let result1 = sut.shuffle(nums1, n1)
        let result2 = sut.shuffle(nums2, n2)
        let result3 = sut.shuffle(nums3, n3)
        
        // then
        
        let expected1 = [2, 3, 5, 4, 1, 7]
        let expected2 = [1, 4, 2, 3, 3, 2, 4, 1]
        let expected3 = [1, 2, 1, 2]
        
        XCTAssertEqual(result1, expected1)
        XCTAssertEqual(result2, expected2)
        XCTAssertEqual(result3, expected3)
    }
}
