import Foundation
public struct ListUtils {
  
  public let file: String
  public let target: String
  
  public init(file: String, target: String) {
    self.file = file
    self.target = target
  }
  
  func checkTarget() -> Bool {
    if Int(self.target) != nil { return true }
    else {
      NSLog("Target not valid")
      return false
    }
  }
  
  func loadList() -> Bool {
    do {
      let file = try String(contentsOfFile: self.file, encoding: String.Encoding.utf8)
      let list: [String] = file.components(separatedBy: "\n")
      let parsedList = list.map { Int($0) ?? 0 }
      if checkTarget() {
        searchForCandidates(list: parsedList)
      }
      return true
    } catch {
      Swift.print("Error while loading file")
      return false
    }
  }
  
  func searchForCandidates(list: [Int]) {
    
    
  }
}

//When invoked, the tool takes a list of numbers ( data ) as well as another number ( target ). 2. It will return a list of number pairs from data which - added together - equal target . The list
//might be empty and should not contain duplicate pairs.


