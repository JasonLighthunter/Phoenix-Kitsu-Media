import XCTest
@testable import PhoenixKitsuMedia

class MangaTypeEnumTests: XCTestCase {
  func testMediaTypeEnum() {
    XCTAssertEqual(MangaTypeEnum(rawValue: "manga"), MangaTypeEnum.manga)
    XCTAssertEqual(MangaTypeEnum(rawValue: "novel"), MangaTypeEnum.novel)
    XCTAssertEqual(MangaTypeEnum(rawValue: "manhua"), MangaTypeEnum.manhua)
    XCTAssertEqual(MangaTypeEnum(rawValue: "oneshot"), MangaTypeEnum.oneshot)
    XCTAssertEqual(MangaTypeEnum(rawValue: "doujin"), MangaTypeEnum.doujin)
    XCTAssertEqual(MangaTypeEnum(rawValue: "manhwa"), MangaTypeEnum.manhwa)
    XCTAssertEqual(MangaTypeEnum(rawValue: "oel"), MangaTypeEnum.oel)
    XCTAssertNil(MangaTypeEnum(rawValue: "InvalidInput"))
  }
}
