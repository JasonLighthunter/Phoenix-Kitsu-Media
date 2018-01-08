import PhoenixKitsuCore

public class CategoryFavorite: KitsuObject {
  public static var requestURLString = "category-favorites"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: CategoryFavoriteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class CategoryFavoriteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
