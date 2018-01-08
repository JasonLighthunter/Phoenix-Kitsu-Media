import PhoenixKitsuCore

public class MediaRelationship: KitsuObject {
  public static var requestURLString = "Media-relationships"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: MediaRelationshipAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class MediaRelationshipAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let role: MediaRelationshipRoleEnum
}
