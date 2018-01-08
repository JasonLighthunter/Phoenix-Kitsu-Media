import PhoenixKitsuCore

public class Streamer: KitsuObject {
  public static var requestURLString = "streamers"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: StreamerAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class StreamerAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let siteName: String
  public let streamingLinksCount: Int
  public let logo: String?
}
