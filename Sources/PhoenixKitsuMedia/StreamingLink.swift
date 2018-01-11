import PhoenixKitsuCore
import Requestable

public class StreamingLink: KitsuObject<StreamingLinkAttributes>, Requestable {
  public static var requestURLString = "streaming-links"
}

public class StreamingLinkAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let url: String
  public let subs: [String]
  public let dubs: [String]
}
