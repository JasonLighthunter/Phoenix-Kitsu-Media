import PhoenixKitsuCore
import Requestable

public class Streamer: KitsuObject<StreamerAttributes>, Requestable {
  public static var requestURLString = "streamers"
}

public class StreamerAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let siteName: String
  public let streamingLinksCount: Int
  public let logo: String?
}
