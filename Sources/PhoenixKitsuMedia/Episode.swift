import PhoenixKitsuCore
import Requestable

public class Episode: KitsuObject<EpisodeAttributes>, Requestable {
  public static var requestURLString = "episodes"
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
