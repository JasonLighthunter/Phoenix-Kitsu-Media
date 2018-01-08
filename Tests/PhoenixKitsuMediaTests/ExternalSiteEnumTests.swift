import XCTest
@testable import PhoenixKitsuMedia

class ExternalSiteEnumTests: XCTestCase {
  func testExternalSiteEnum() {
    XCTAssertEqual(ExternalSiteEnum(rawValue: "anidb"), ExternalSiteEnum.anidb)
    XCTAssertEqual(ExternalSiteEnum(rawValue: "myanimelist/anime"),
                   ExternalSiteEnum.myAnimeListAnime)
    XCTAssertEqual(ExternalSiteEnum(rawValue: "myanimelist/manga"),
                   ExternalSiteEnum.myAnimeListManga)
    XCTAssertEqual(ExternalSiteEnum(rawValue: "thetvdb/season"), ExternalSiteEnum.TVDBSeason)
    XCTAssertEqual(ExternalSiteEnum(rawValue: "thetvdb/series"), ExternalSiteEnum.TVDBSeries)
    XCTAssertNil(ExternalSiteEnum(rawValue: "InvalidInput"))
  }
}
