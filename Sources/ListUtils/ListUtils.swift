import Foundation
public struct ListUtils {

  private let file: String
  private let target: Int

  public init(file: String, target: Int) {
    self.file = file
    self.target = target
  }

  public func loadList() -> [Int]? {
    do {
      let file = try String(contentsOfFile: self.file, encoding: .utf8)
      let list: [String] = file.components(separatedBy: "\n")
      let data = list.map { Int($0) ?? 0 }
      return data
    } catch {
      NSLog("Error while loading file")
      return nil
    }
  }

  public func searchForCandidates(data: [Int]) -> [Int: Int] {
    var result = [Int: Int]()
    for x in data {
      if data.index(of: target - x) != nil {
        if result[target - x] != nil { break }
        result[x] = target - x
      }
    }
    return result
  }

  public func printResult(result: [Int: Int]) {
    if result.count > 0 {
      print("\n*********************" + "\n   Matching Pairs:\n" + "*********************\n")
      result.forEach { print("\($0.key) - \($0.value)") }
    } else {
      print("No matching pairs found")
    }
  }
}
