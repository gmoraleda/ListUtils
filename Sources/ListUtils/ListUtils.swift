public struct ListUtils {
  
  public let file: String
  public let target: String
  
  public init(file: String, target: String) {
    self.file = file
    self.target = target
  }
  
  public var test: String {
    return "This is working"
  }
  
  
  public var emojiFlag: String {
    return "\u{1f1f5}\u{1f1f7}"
  }
}
