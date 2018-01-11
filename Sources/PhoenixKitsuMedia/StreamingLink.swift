import PhoenixKitsuCore
import Requestable

public class StreamingLink: KitsuObject, Requestable {
  public static var requestURLString = "streaming-links"
  
  public let attributes: StreamingLinkAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(StreamingLinkAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class StreamingLinkAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let url: String
  public let subs: [String]
  public let dubs: [String]
}
