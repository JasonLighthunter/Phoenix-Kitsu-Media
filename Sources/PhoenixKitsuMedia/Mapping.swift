import PhoenixKitsuCore
import Requestable

public class Mapping: KitsuObject, Requestable {
  public static var requestURLString = "mappings"
  
  public let attributes: MappingAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(MappingAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
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
