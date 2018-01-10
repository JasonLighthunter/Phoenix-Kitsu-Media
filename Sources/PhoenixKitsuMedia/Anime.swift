import PhoenixKitsuCore

public class Anime: KitsuMediaObject {  
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
  
  public func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String {
    var title: String? = ""
    
    switch identifier {
    case .americanEnglish:
      title = self.attributes?.titles.americanEnglish
    case .english:
      title = self.attributes?.titles.english
    case .romaji:
      title = self.attributes?.titles.romaji
    case .kanji:
      title = self.attributes?.titles.kanji
    case .canonical:
      title = self.attributes?.canonicalTitle
    }
    
    guard let returnValue = title else {
      guard let returnValue = self.attributes?.canonicalTitle else { return (self.attributes?.slug)! }
      return returnValue
    }
    return returnValue
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

