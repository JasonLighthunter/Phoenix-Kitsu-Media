import XCTest
@testable import PhoenixKitsuMedia

class ReleaseStatusEnumTests: XCTestCase {
  func testReleaseStatusEnum() {
    XCTAssertEqual(ReleaseStatusEnum(rawValue: "tba"), ReleaseStatusEnum.toBeAnnounced)
    XCTAssertEqual(ReleaseStatusEnum(rawValue: "finished"), ReleaseStatusEnum.finished)
    XCTAssertEqual(ReleaseStatusEnum(rawValue: "current"), ReleaseStatusEnum.current)
    XCTAssertEqual(ReleaseStatusEnum(rawValue: "upcoming"), ReleaseStatusEnum.upcoming)
    XCTAssertEqual(ReleaseStatusEnum(rawValue: "unreleased"), ReleaseStatusEnum.unreleased)
    XCTAssertNil(ReleaseStatusEnum(rawValue: "InvalidInput"))
  }
}
