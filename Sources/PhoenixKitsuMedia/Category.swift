import PhoenixKitsuCore
import Requestable

public class Category: KitsuObject, Requestable {
  public static var requestURLString = "categories"
  
  public let attributes: CategoryAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(CategoryAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
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
