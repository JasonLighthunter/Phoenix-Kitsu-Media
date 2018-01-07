import PhoenixKitsuCore

public class Anime: KitsuObject {
  public static var requestURLString = "anime"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: AnimeAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class AnimeAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let slug: String?
  public let synopsis: String
  public let titles: Titles
  public let canonicalTitle: String
  public let abbreviatedTitles: [String]
  public let averageRating: String
  public let ratingFrequencies: [String : String]
  public let userCount: Int
  public let favoritesCount: Int
  public let startDate: String?
  public let endDate: String?
  public let popularityRank: Int?
  public let ratingRank: Int?
  public let ageRating: AgeRatingEnum
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
