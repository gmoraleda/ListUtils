import XCTest
@testable import ListUtils

class ListUtilsTests: XCTestCase {

  func testLoadFile() {
    XCTAssertTrue(ListUtils(file: "/Users/guille/Documents/PayBackCodingChallenge/ListUtils/Tests/testfile.txt", target: "").loadList())
  }

  func testCheckTarget() {
    XCTAssertTrue(ListUtils(file: "", target: "24").checkTarget())
    XCTAssertFalse(ListUtils(file: "", target: "Wilson").checkTarget())
  }

  static var allTests = [
    ("testLoadFile", testLoadFile),
    ("testCheckTarget", testCheckTarget)

  ]
}


