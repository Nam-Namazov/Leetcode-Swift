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
    
    func testSolution_twoSum() {
        // given
        let nums1 = [2, 7, 11, 15]
        let nums2 = [3, 2, 4]
        let nums3 = [1, 2, 3, 4]
        let nums4 = [3, 3]
        
        let target1 = 9
        let target2 = 6
        let target3 = 20
        let target4 = 6
        
        // when
        let result1 = sut.twoSum(nums1, target1)
        let result2 = sut.twoSum(nums2, target2)
        let result3 = sut.twoSum(nums3, target3)
        let result4 = sut.twoSum(nums4, target4)
        
        // then
        let expected1 = [0, 1]
        let expected2 = [1, 2]
        let expected3 = [Int]()
        let expected4 = [0, 1]
        
        XCTAssertEqual(result1, expected1)
        XCTAssertEqual(result2, expected2)
        XCTAssertEqual(result3, expected3)
        XCTAssertEqual(result4, expected4)
    }
}
