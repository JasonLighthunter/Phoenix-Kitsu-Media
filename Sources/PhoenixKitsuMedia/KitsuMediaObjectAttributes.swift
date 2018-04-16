import PhoenixKitsuCore

public protocol KitsuMediaObjectAttributes: KitsuObjectAttributesWithTimestamp {
  var slug: String? {get}
  var synopsis: String? {get}
  var titles: Titles {get}
  var canonicalTitle: String {get}
  var abbreviatedTitles: [String]? {get}
  var averageRating: String? {get}
  var ratingFrequencies: [String: String] {get}
  var userCount: Int {get}
  var favoritesCount: Int {get}
  var startDate: String? {get}
  var endDate: String? {get}
  var popularityRank: Int? {get}
  var ratingRank: Int? {get}
  var ageRating: AgeRatingEnum? {get}
  var ageRatingGuide: String? {get}
  var status: ReleaseStatusEnum {get}
  var toBeAnnounced: String? {get}
  var posterImage: Image? {get}
  var coverImage: Image? {get}
}
