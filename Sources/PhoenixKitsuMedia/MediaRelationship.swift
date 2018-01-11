import PhoenixKitsuCore
import Requestable

public class MediaRelationship: KitsuObject, Requestable {
  public static var requestURLString = "Media-relationships"
  
  public let attributes: MediaRelationshipAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(MediaRelationshipAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class MediaRelationshipAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let role: MediaRelationshipRoleEnum
}
