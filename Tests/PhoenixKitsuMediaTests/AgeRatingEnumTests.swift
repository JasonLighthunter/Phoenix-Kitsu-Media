import XCTest
@testable import PhoenixKitsuMedia

class AgeRatingEnumTests: XCTestCase {
  func testAgeRatingEnum() {
    XCTAssertEqual(AgeRatingEnum(rawValue: "G"), AgeRatingEnum.generalAudiences)
    XCTAssertEqual(AgeRatingEnum(rawValue: "R"), AgeRatingEnum.restricted)
    XCTAssertEqual(AgeRatingEnum(rawValue: "R18"), AgeRatingEnum.restricted18)
    XCTAssertEqual(AgeRatingEnum(rawValue: "PG"), AgeRatingEnum.parentalGuidance)
    XCTAssertNil(AgeRatingEnum(rawValue: "InvalidInput"))
  }
}
