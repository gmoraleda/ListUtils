import XCTest
@testable import ListUtils

class ListUtilsTests: XCTestCase {
  
  private let TEST_FILE = "/Users/guille/Documents/PayBackCodingChallenge/ListUtils/Tests/testfile.txt"

  func testLoadFile() {
    XCTAssertTrue(ListUtils(file: TEST_FILE, target:128).loadList())
  }
  
  func testSearchCandidates() {
    XCTAssertTrue(ListUtils(file: TEST_FILE, target:36).searchForCandidates(list: [1,2,3,12,12,24,0,1,23,-2,5,4,26]))
  }
  
  func testPrintResult() {
    XCTAssertNotNil(ListUtils(file: TEST_FILE, target:24).printResult(result: [1:2,3:4,5:6,7:8]))
  }

  static var allTests = [
    ("testLoadFile", testLoadFile),
    ("testSearchCandidates",testSearchCandidates),
    ("testPrintResult",testPrintResult)
  ]
}


