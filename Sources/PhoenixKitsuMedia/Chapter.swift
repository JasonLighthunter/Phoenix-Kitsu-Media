import PhoenixKitsuCore

public class Chapter: KitsuObject {
  public static var requestURLString = "chapters"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: ChapterAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class ChapterAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let titles: Titles
  public let canonicalTitle: String
  public let volumeNumber: Int?
  public let number: Int
  public let synopsis: String?
  public let published: String?
  public let length: Int?
  public let thumbnail: Image?
}
