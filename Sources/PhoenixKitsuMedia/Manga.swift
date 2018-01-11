import PhoenixKitsuCore
import Requestable

public class Manga: KitsuObject, HasMediaAttributes, Requestable {
  public static let requestURLString = "manga"
  
  public let attributes: MangaAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(MangaAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class MangaAttributes: KitsuMediaObjectAttributes {
  public let createdAt: String
  public let updatedAt: String
  public let slug: String?
  public let synopsis: String?
  public let titles: Titles
  public let canonicalTitle: String
  public let abbreviatedTitles: [String]?
  public let averageRating: String?
  public let ratingFrequencies: [String : String]
  public let userCount: Int
  public let favoritesCount: Int
  public let startDate: String?
  public let endDate: String?
  public let popularityRank: Int?
  public let ratingRank: Int?
  public let ageRating: AgeRatingEnum?
  public let ageRatingGuide: String?
  public let subtype: MangaTypeEnum
  public let status: ReleaseStatusEnum
  public let toBeAnnounced: String?
  public let posterImage: Image?
  public let coverImage: Image?
  public let chapterCount: Int?
  public let volumeCount: Int?
  public let serialization: String?
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case slug
    case synopsis
    case titles
    case canonicalTitle
    case abbreviatedTitles
    case averageRating
    case ratingFrequencies
    case userCount
    case favoritesCount
    case startDate
    case endDate
    case popularityRank
    case ratingRank
    case ageRating
    case ageRatingGuide
    case subtype
    case status
    case toBeAnnounced = "tba"
    case posterImage
    case coverImage
    case chapterCount
    case volumeCount
    case serialization
  }
}
