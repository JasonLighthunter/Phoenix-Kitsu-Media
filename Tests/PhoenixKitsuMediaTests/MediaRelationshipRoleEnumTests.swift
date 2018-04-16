import XCTest
@testable import PhoenixKitsuMedia

class MediaRelationshipRoleEnumTests: XCTestCase {
  func testMediaRelationshipRoleEnum() {
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "sequel"),
                   MediaRelationshipRoleEnum.sequel)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "prequel"),
                   MediaRelationshipRoleEnum.prequel)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "alternative_setting"),
                   MediaRelationshipRoleEnum.alternativeSetting)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "alternative_version"),
                   MediaRelationshipRoleEnum.alternativeVersion)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "side_story"),
                   MediaRelationshipRoleEnum.sideStory)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "parent_story"),
                   MediaRelationshipRoleEnum.parentStory)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "summary"),
                   MediaRelationshipRoleEnum.summary)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "full_story"),
                   MediaRelationshipRoleEnum.fullStory)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "spinoff"),
                   MediaRelationshipRoleEnum.spinoff)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "adaptation"),
                   MediaRelationshipRoleEnum.adaptation)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "character"),
                   MediaRelationshipRoleEnum.character)
    XCTAssertEqual(MediaRelationshipRoleEnum(rawValue: "other"),
                   MediaRelationshipRoleEnum.other)
    XCTAssertNil(MediaRelationshipRoleEnum(rawValue: "InvalidInput"))
  }
}
