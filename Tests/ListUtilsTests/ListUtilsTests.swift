import XCTest
@testable import ListUtils

class ListUtilsTests: XCTestCase {
  func loadFileTest() {
    XCTAssertTrue(ListUtils(file: "/Users/guille/Documents/PayBackCodingChallenge/ListUtils/Tests/testfile.txt", target: "").loadList())
  }

//  func checkTargetTest() {
//    XCTAssertTrue(ListUtils(file: "", target: "24").checkTarget())
//  }
}

extension ListUtilsTests {
  static var allTests : [(String, (ListUtilsTests) -> () throws -> Void)] {
    return [
      ("loadFileTest", loadFileTest)
      //("checkTargetTest", checkTargetTest)
    ]
  }
}
