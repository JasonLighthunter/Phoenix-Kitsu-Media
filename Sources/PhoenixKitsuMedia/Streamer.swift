import PhoenixKitsuCore
import Requestable

public class Streamer: KitsuObject, Requestable {
  public static var requestURLString = "streamers"
  
  public let attributes: StreamerAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(StreamerAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class StreamerAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let siteName: String
  public let streamingLinksCount: Int
  public let logo: String?
}
