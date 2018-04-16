public struct Titles: Decodable {
  public let americanEnglish: String?
  public let english: String?
  public let romaji: String?
  public let kanji: String?

  private enum CodingKeys: String, CodingKey {
    case americanEnglish = "en_us"
    case english = "en"
    case romaji = "en_jp"
    case kanji = "ja_jp"
  }
}
