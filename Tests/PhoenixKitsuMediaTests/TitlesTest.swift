import XCTest
@testable import PhoenixKitsuMedia

class StatDataTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any?] = [
    "en": "testEnglish",
    "en_us": "testAmerican",
    "en_jp": "Yurumates",
    "ja_jp": "ゆるめいつ"
  ]

  let validMissingDataJSON: [String: Any] = [:]

  let validNilDataJSON: [String: Any?] = [
    "en": nil,
    "en_us": nil,
    "en_jp": nil,
    "ja_jp": nil
  ]

  //  let invalidMissingDataJSON: [String : Any] = [:]
  //
  //  let invalidNilDataJSON: [String : Any?] = [
  //    "en": nil,
  //    "en_us": nil,
  //    "en_jp": nil,
  //    "ja_jp": nil
  //  ]

  var titles: Titles?

  override func tearDown() {
    titles = nil

    super.tearDown()
  }

  func testTitlesFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      titles = try? decoder.decode(Titles.self, from: data!)
    } else {
      titles = nil
    }

    XCTAssertNotNil(titles)

    XCTAssertEqual(titles?.americanEnglish, "testAmerican")
    XCTAssertEqual(titles?.english, "testEnglish")
    XCTAssertEqual(titles?.romaji, "Yurumates")
    XCTAssertEqual(titles?.kanji, "ゆるめいつ")
  }

  func testTitlesValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      titles = try? decoder.decode(Titles.self, from: data!)
    } else {
      titles = nil
    }

    XCTAssertNotNil(titles)

    XCTAssertNil(titles?.americanEnglish)
    XCTAssertNil(titles?.english)
    XCTAssertNil(titles?.romaji)
    XCTAssertNil(titles?.kanji)
  }

  func testTitlesValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      titles = try? decoder.decode(Titles.self, from: data!)
    } else {
      titles = nil
    }

    XCTAssertNotNil(titles)

    XCTAssertNil(titles?.americanEnglish)
    XCTAssertNil(titles?.english)
    XCTAssertNil(titles?.romaji)
    XCTAssertNil(titles?.kanji)
  }

  //  func testStatDataInvalidMissingData() {
  //    let json = invalidMissingDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      titles = try? decoder.decode(Titles.self, from: data!)
  //    } else {
  //      titles = nil
  //    }
  //
  //    XCTAssertNil(titles)
  //  }
  //
  //  func testStatDataInvalidNilData() {
  //    let json = invalidNilDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      titles = try? decoder.decode(Titles.self, from: data!)
  //    } else {
  //      titles = nil
  //    }
  //
  //    XCTAssertNil(titles)
  //  }
}
