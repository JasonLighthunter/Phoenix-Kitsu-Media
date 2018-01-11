import PhoenixKitsuCore
import Requestable

public class Mapping: KitsuObject<MappingAttributes>, Requestable {
  public static var requestURLString = "mappings"
}

public class MappingAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let externalSite: ExternalSiteEnum
  public let externalID: String
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case externalSite
    case externalID = "externalId"
  }
}
