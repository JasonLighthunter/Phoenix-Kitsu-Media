import PhoenixKitsuCore
import Requestable

public class CategoryFavorite: KitsuObject, Requestable {
  public static var requestURLString = "category-favorites"
  
  public let attributes: CategoryFavoriteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(CategoryFavoriteAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class CategoryFavoriteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
