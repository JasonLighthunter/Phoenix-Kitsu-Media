import XCTest
@testable import PhoenixKitsuMedia

class AnimeTypeEnumTests: XCTestCase {
  func testAnimeTypeEnum() {
    XCTAssertEqual(AnimeTypeEnum(rawValue: "TV"), AnimeTypeEnum.television)
    XCTAssertEqual(AnimeTypeEnum(rawValue: "special"), AnimeTypeEnum.special)
    XCTAssertEqual(AnimeTypeEnum(rawValue: "OVA"), AnimeTypeEnum.OVA)
    XCTAssertEqual(AnimeTypeEnum(rawValue: "ONA"), AnimeTypeEnum.ONA)
    XCTAssertEqual(AnimeTypeEnum(rawValue: "movie"), AnimeTypeEnum.movie)
    XCTAssertEqual(AnimeTypeEnum(rawValue: "music"), AnimeTypeEnum.music)
    XCTAssertNil(AnimeTypeEnum(rawValue: "InvalidInput"))
  }
}
