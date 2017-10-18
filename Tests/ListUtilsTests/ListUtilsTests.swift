import XCTest
@testable import ListUtils

class ListUtilsTests: XCTestCase {
  
  private let BIG_FILE = "/Users/guille/Documents/PayBackCodingChallenge/ListUtils/Tests/test.txt"
  private let SMALL = [1,2,45,23,12,45,234,0,32,33,50]
  
  func testSearchCandidatesBig() {
    let lu = ListUtils(file: BIG_FILE, target: 465)
    let list = lu.loadList()
    let result = lu.searchForCandidates(data: list)
    XCTAssertTrue(result.count>0)
    XCTAssertNotNil(lu.printResult(result: result))
  }
  
  func testSearchCandidatesSmall() {
    let lu = ListUtils(file: BIG_FILE, target: 35)
    let result = lu.searchForCandidates(data: SMALL.sorted())
    XCTAssertTrue(result.count>0)
    XCTAssertNotNil(lu.printResult(result: result))
  }
  
  func testLoadList() {
    let lu = ListUtils(file: "XYZ", target: 40)
    XCTAssertFalse(lu.loadList().count>0)
  }

  static var allTests = [
    ("testSearchCandidatesBig",testSearchCandidatesBig),
    ("testSearchCandidatesSmall",testSearchCandidatesSmall),
    ("testLoadList",testLoadList)
  ]
}


