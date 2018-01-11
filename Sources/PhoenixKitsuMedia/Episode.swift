import PhoenixKitsuCore
import Requestable

public class Episode: KitsuObject, Requestable {
  public static var requestURLString = "episodes"
  
  public let attributes: EpisodeAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(EpisodeAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class EpisodeAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let titles: Titles
  public let canonicalTitle: String
  public let seasonNumber: Int?
  public let number: Int?
  public let relativeNumber: Int?
  public let synopsis: String?
  public let airdate: String?
  public let length: Int?
  public let thumbnail: Image?
}
