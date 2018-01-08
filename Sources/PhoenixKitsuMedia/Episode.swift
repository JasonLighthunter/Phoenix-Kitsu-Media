import PhoenixKitsuCore

public class Episode: KitsuObject {
  public static var requestURLString = "episodes"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: EpisodeAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
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
