import PhoenixKitsuCore

public class Category: KitsuObject {
  public static var requestURLString = "categories"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: CategoryAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class CategoryAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let title: String
  public let description: String?
  public let totalMediaCount: Int?
  public let slug: String
  public let isNSFW: Bool
  public let childCount: Int
  public let image: Image?
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case title
    case description
    case totalMediaCount
    case slug
    case isNSFW = "nsfw"
    case childCount
    case image
  }
}
