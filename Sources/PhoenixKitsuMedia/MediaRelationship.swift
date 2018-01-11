import PhoenixKitsuCore
import Requestable

public class MediaRelationship: KitsuObject<MediaRelationshipAttributes>, Requestable {
  public static var requestURLString = "Media-relationships"
}

public class MediaRelationshipAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let role: MediaRelationshipRoleEnum
}
