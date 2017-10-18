import Foundation
public struct ListUtils {

  private let file: String
  private let target: Int
  private var data = [Int]()
  private var result = [Int: Int]()

  public init(file: String, target: Int) {
    self.file = file
    self.target = target
    if loadList() {
      NSLog("Data loaded")
    }
  }

  mutating func loadList() -> Bool{
    do {
      let file = try String(contentsOfFile: self.file, encoding: String.Encoding.utf8)
      let list: [String] = file.components(separatedBy: "\n")
      data = list.map { Int($0) ?? 0 }
      return true
    } catch {
      NSLog("Error while loading file")
      return false
    }
  }

  mutating func searchForCandidates() -> Bool {
    for (i, x) in data.enumerated() {
      for y in data[i + 1 ..< data.count] {
        if x + y == target {
          result[x] = y
        }
        if x + y > target {
          break
        }
      }
    }
    if result.count > 0 { return true }
      else { return false }
  }

  func printResult() {
    if result.count > 0 {
      print("\n*********************"+"\n   Matching Pairs:\n"+"*********************\n")
      result.forEach { print($0) }
    } else {
      print("No matching pairs found")
    }
  }
}

