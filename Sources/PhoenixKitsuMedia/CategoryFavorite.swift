import PhoenixKitsuCore
import Requestable

public class CategoryFavorite: KitsuObject<CategoryFavoriteAttributes>, Requestable {
  public static var requestURLString = "category-favorites"
}

public class CategoryFavoriteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
