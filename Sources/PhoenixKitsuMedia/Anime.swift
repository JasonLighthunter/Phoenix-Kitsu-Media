import PhoenixKitsuCore
import Requestable

public class Anime: KitsuObject, Requestable {
  public static var requestURLString = "anime"
  
  public let attributes: AnimeAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case attributes
  }
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    attributes = try? container.decode(AnimeAttributes.self, forKey: .attributes)
    try super.init(from: decoder)
  }
}

public class AnimeAttributes: KitsuMediaObjectAttributes {
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
  public let subtype: AnimeTypeEnum
  public let status: ReleaseStatusEnum
  public let toBeAnnounced: String?
  public let posterImage: Image?
  public let coverImage: Image?
  public let episodeCount: Int?
  public let episodeLength: Int?
  public let youtubeVideoID: String?
  public let isNSFW: Bool
  
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
    case episodeCount
    case episodeLength
    case youtubeVideoID = "youtubeVideoId"
    case isNSFW = "nsfw"
  }
}

