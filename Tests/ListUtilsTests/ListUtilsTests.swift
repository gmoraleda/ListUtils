import XCTest
@testable import ListUtils

class ListUtilsTests: XCTestCase {
  
  private let TEST_FILE = "/Users/guille/Documents/PayBackCodingChallenge/ListUtils/Tests/testfile.txt"
  
  func testSearchCandidates() {
    var lu = ListUtils(file: TEST_FILE, target: 908)
    XCTAssertTrue(lu.searchForCandidates())
    XCTAssertNotNil(lu.printResult())
  }

  static var allTests = [
    ("testSearchCandidates",testSearchCandidates)
  ]
}


