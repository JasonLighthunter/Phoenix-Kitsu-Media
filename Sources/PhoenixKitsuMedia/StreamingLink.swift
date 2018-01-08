import PhoenixKitsuCore

public class StreamingLink: KitsuObject {
  public static var requestURLString = "streaming-links"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: StreamingLinkAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class StreamingLinkAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let url: String
  public let subs: [String]
  public let dubs: [String]
}
