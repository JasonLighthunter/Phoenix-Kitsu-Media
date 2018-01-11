import PhoenixKitsuCore
import Requestable

public class Chapter: KitsuObject<ChapterAttributes>, Requestable {
  public static var requestURLString = "chapters"
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
