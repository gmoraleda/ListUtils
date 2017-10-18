import Foundation
public struct ListUtils {
  
  public let file: String
  public let target: Int
  
  public init(file: String, target: Int) {
    self.file = file
    self.target = target
  }
  
  func loadList() -> Bool {
    do {
      let file = try String(contentsOfFile: self.file, encoding: String.Encoding.utf8)
      let list: [String] = file.components(separatedBy: "\n")
      let parsedList = list.map { Int($0) ?? 0 }
      searchForCandidates(list: parsedList.sorted())
      return true
    } catch {
      Swift.print("Error while loading file")
      return false
    }
  }
  
  func searchForCandidates(list: [Int]) -> Bool {
    var result = [Int:Int]()
    for (i, x) in list.enumerated() {
      for y in list[i+1 ..< list.count] {
        if x + y == target {
          result[x]=y
        }
        if x + y > target {
          break
        }
      }
    }
    if result.count > 0 { return true }
      else { return false }
  }
  
  func printResult(result: [Int:Int]) {
    if result.count > 0 {
    print("Matching pairs:")
    result.forEach { print($0) }
    } else {
      print("No matching pairs found")
    }
  }
}

//When invoked, the tool takes a list of numbers ( data ) as well as another number ( target ). 2. It will return a list of number pairs from data which - added together - equal target . The list
//might be empty and should not contain duplicate pairs.


