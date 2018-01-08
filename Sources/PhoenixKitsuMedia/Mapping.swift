import PhoenixKitsuCore

public class Mapping: KitsuObject {
  public static var requestURLString = "mappings"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: MappingAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
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
