import PhoenixKitsuCore
import Requestable

public class Chapter: KitsuObject, Requestable {
  public static var requestURLString = "chapters"
  
  public let attributes: ChapterAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(ChapterAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
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
