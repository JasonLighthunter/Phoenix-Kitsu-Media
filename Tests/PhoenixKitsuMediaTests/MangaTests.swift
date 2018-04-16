import XCTest
@testable import PhoenixKitsuMedia

class MangaTests: XCTestCase {
  let decoder = JSONDecoder()

  var manga: Manga?
  var mangaAttributes: MangaAttributes?

  override func tearDown() {
    manga = nil
    mangaAttributes = nil

    super.tearDown()
  }

  func testMangaFullyFilled() {
    let json = MangaTestData.fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      manga = try? decoder.decode(Manga.self, from: data!)
    } else {
      manga = nil
    }
    mangaAttributes = manga?.attributes

    XCTAssertNotNil(manga)
    XCTAssertEqual(manga?.objectID, "4")
    XCTAssertEqual(manga?.type, "manga")
    XCTAssertNotNil(manga?.links)

    XCTAssertNotNil(mangaAttributes)
    XCTAssertEqual(mangaAttributes?.createdAt, "2013-12-18T13:48:24.164Z")
    XCTAssertEqual(mangaAttributes?.updatedAt, "2018-01-08T12:01:41.130Z")
    XCTAssertEqual(mangaAttributes?.slug, "guardian-dog")
    XCTAssertEqual(mangaAttributes?.synopsis, "Gengo Kurosaka leads a normal life.")
    XCTAssertNotNil(mangaAttributes?.titles)
    XCTAssertEqual(mangaAttributes?.canonicalTitle, "Guardian Dog")
    XCTAssertEqual((mangaAttributes?.abbreviatedTitles)!, ["abbreviated1"])
    XCTAssertEqual(mangaAttributes?.averageRating, "34.65")
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2": "0", "3": "0"])
    XCTAssertEqual(mangaAttributes?.userCount, 47)
    XCTAssertEqual(mangaAttributes?.favoritesCount, 1)
    XCTAssertEqual(mangaAttributes?.startDate, "2005-01-01")
    XCTAssertEqual(mangaAttributes?.endDate, "2005-01-01")
    XCTAssertEqual(mangaAttributes?.popularityRank, 4546)
    XCTAssertEqual(mangaAttributes?.ratingRank, 34)
    XCTAssertEqual(mangaAttributes?.ageRating, AgeRatingEnum.generalAudiences)
    XCTAssertEqual(mangaAttributes?.ageRatingGuide, "Horror")
    XCTAssertEqual(mangaAttributes?.subtype, MangaTypeEnum.manga)
    XCTAssertEqual(mangaAttributes?.status, ReleaseStatusEnum.current)
    XCTAssertEqual(mangaAttributes?.toBeAnnounced, "Winter 2020")
    XCTAssertNotNil(mangaAttributes?.posterImage)
    XCTAssertNotNil(mangaAttributes?.coverImage)
    XCTAssertEqual(mangaAttributes?.chapterCount, 22)
    XCTAssertEqual(mangaAttributes?.volumeCount, 4)
    XCTAssertEqual(mangaAttributes?.serialization, "Comic Rush")
  }

  func testMangaValidMissingData() {
    let json = MangaTestData.validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      manga = try? decoder.decode(Manga.self, from: data!)
    } else {
      manga = nil
    }
    mangaAttributes = manga?.attributes

    XCTAssertNotNil(manga)
    XCTAssertEqual(manga?.objectID, "4")
    XCTAssertEqual(manga?.type, "manga")
    XCTAssertNotNil(manga?.links)

    XCTAssertNotNil(mangaAttributes)
    XCTAssertEqual(mangaAttributes?.createdAt, "2013-12-18T13:48:24.164Z")
    XCTAssertEqual(mangaAttributes?.updatedAt, "2018-01-08T12:01:41.130Z")
    XCTAssertNil(mangaAttributes?.slug)
    XCTAssertNil(mangaAttributes?.synopsis)
    XCTAssertNotNil(mangaAttributes?.titles)
    XCTAssertEqual(mangaAttributes?.canonicalTitle, "Guardian Dog")
    XCTAssertNil(mangaAttributes?.abbreviatedTitles)
    XCTAssertNil(mangaAttributes?.averageRating)
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2": "0", "3": "0"])
    XCTAssertEqual(mangaAttributes?.userCount, 47)
    XCTAssertEqual(mangaAttributes?.favoritesCount, 1)
    XCTAssertNil(mangaAttributes?.startDate)
    XCTAssertNil(mangaAttributes?.endDate)
    XCTAssertNil(mangaAttributes?.popularityRank)
    XCTAssertNil(mangaAttributes?.ratingRank)
    XCTAssertNil(mangaAttributes?.ageRating)
    XCTAssertNil(mangaAttributes?.ageRatingGuide)
    XCTAssertEqual(mangaAttributes?.subtype, MangaTypeEnum.manga)
    XCTAssertEqual(mangaAttributes?.status, ReleaseStatusEnum.current)
    XCTAssertNil(mangaAttributes?.toBeAnnounced)
    XCTAssertNil(mangaAttributes?.posterImage)
    XCTAssertNil(mangaAttributes?.coverImage)
    XCTAssertNil(mangaAttributes?.chapterCount)
    XCTAssertNil(mangaAttributes?.volumeCount)
    XCTAssertNil(mangaAttributes?.serialization)
  }

  func testMangaValidNilData() {
    let json = MangaTestData.validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      manga = try? decoder.decode(Manga.self, from: data!)
    } else {
      manga = nil
    }
    mangaAttributes = manga?.attributes

    XCTAssertNotNil(manga)
    XCTAssertEqual(manga?.objectID, "4")
    XCTAssertEqual(manga?.type, "manga")
    XCTAssertNotNil(manga?.links)

    XCTAssertNotNil(mangaAttributes)
    XCTAssertEqual(mangaAttributes?.createdAt, "2013-12-18T13:48:24.164Z")
    XCTAssertEqual(mangaAttributes?.updatedAt, "2018-01-08T12:01:41.130Z")
    XCTAssertNil(mangaAttributes?.slug)
    XCTAssertNil(mangaAttributes?.synopsis)
    XCTAssertNotNil(mangaAttributes?.titles)
    XCTAssertEqual(mangaAttributes?.canonicalTitle, "Guardian Dog")
    XCTAssertNil(mangaAttributes?.abbreviatedTitles)
    XCTAssertNil(mangaAttributes?.averageRating)
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2": "0", "3": "0"])
    XCTAssertEqual(mangaAttributes?.userCount, 47)
    XCTAssertEqual(mangaAttributes?.favoritesCount, 1)
    XCTAssertNil(mangaAttributes?.startDate)
    XCTAssertNil(mangaAttributes?.endDate)
    XCTAssertNil(mangaAttributes?.popularityRank)
    XCTAssertNil(mangaAttributes?.ratingRank)
    XCTAssertNil(mangaAttributes?.ageRating)
    XCTAssertNil(mangaAttributes?.ageRatingGuide)
    XCTAssertEqual(mangaAttributes?.subtype, MangaTypeEnum.manga)
    XCTAssertEqual(mangaAttributes?.status, ReleaseStatusEnum.current)
    XCTAssertNil(mangaAttributes?.toBeAnnounced)
    XCTAssertNil(mangaAttributes?.posterImage)
    XCTAssertNil(mangaAttributes?.coverImage)
    XCTAssertNil(mangaAttributes?.chapterCount)
    XCTAssertNil(mangaAttributes?.volumeCount)
    XCTAssertNil(mangaAttributes?.serialization)
  }

  func testMangaInvalidMissingData() {
    let json = MangaTestData.invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      manga = try? decoder.decode(Manga.self, from: data!)
    } else {
      manga = nil
    }
    mangaAttributes = manga?.attributes

    XCTAssertNotNil(manga)
    XCTAssertEqual(manga?.objectID, "4")
    XCTAssertEqual(manga?.type, "manga")
    XCTAssertNotNil(manga?.links)

    XCTAssertNil(mangaAttributes)
  }

  func testMangaInvalidNilData() {
    let json = MangaTestData.invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      manga = try? decoder.decode(Manga.self, from: data!)
    } else {
      manga = nil
    }
    mangaAttributes = manga?.attributes

    XCTAssertNotNil(manga)
    XCTAssertEqual(manga?.objectID, "4")
    XCTAssertEqual(manga?.type, "manga")
    XCTAssertNotNil(manga?.links)

    XCTAssertNil(mangaAttributes)
  }
}
