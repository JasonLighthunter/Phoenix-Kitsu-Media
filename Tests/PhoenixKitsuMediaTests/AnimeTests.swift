import XCTest
@testable import PhoenixKitsuMedia

class AnimeTests: XCTestCase {
  let decoder = JSONDecoder()

  var anime: Anime?
  var animeAttributes: AnimeAttributes?

  override func tearDown() {
    anime = nil
    animeAttributes = nil

    super.tearDown()
  }

  func testAnimeFullyFilled() {
    let json = AnimeTestData.fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes

    XCTAssertNotNil(anime)
    XCTAssertEqual(anime?.objectID, "4")
    XCTAssertEqual(anime?.type, "anime")
    XCTAssertNotNil(anime?.links)

    XCTAssertNotNil(animeAttributes)
    XCTAssertEqual(animeAttributes?.createdAt, "2013-02-20T17:08:20.229Z")
    XCTAssertEqual(animeAttributes?.updatedAt, "2018-01-07T18:00:14.142Z")
    XCTAssertEqual(animeAttributes?.slug, "yurumates")
    XCTAssertEqual(animeAttributes?.synopsis, "testSynopsis")
    XCTAssertNotNil(animeAttributes?.titles)
    XCTAssertEqual(animeAttributes?.canonicalTitle, "Yurumates")
    XCTAssertEqual((animeAttributes?.abbreviatedTitles)!, ["test"])
    XCTAssertEqual(animeAttributes?.averageRating, "67.0")
    XCTAssertEqual((animeAttributes?.ratingFrequencies)!, ["2": "1", "3": "1"])
    XCTAssertEqual(animeAttributes?.userCount, 504)
    XCTAssertEqual(animeAttributes?.favoritesCount, 2)
    XCTAssertEqual(animeAttributes?.startDate, "2009-04-24")
    XCTAssertEqual(animeAttributes?.endDate, "2009-04-24")
    XCTAssertEqual(animeAttributes?.popularityRank, 3872)
    XCTAssertEqual(animeAttributes?.ratingRank, 4339)
    XCTAssertEqual(animeAttributes?.ageRating, AgeRatingEnum.parentalGuidance)
    XCTAssertEqual(animeAttributes?.ageRatingGuide, "Teens 13 or older")
    XCTAssertEqual(animeAttributes?.subtype, AnimeTypeEnum.OVA)
    XCTAssertEqual(animeAttributes?.status, ReleaseStatusEnum.finished)
    XCTAssertEqual(animeAttributes?.toBeAnnounced, "winter 2020")
    XCTAssertNotNil(animeAttributes?.posterImage)
    XCTAssertNotNil(animeAttributes?.coverImage)
    XCTAssertEqual(animeAttributes?.episodeCount, 1)
    XCTAssertEqual(animeAttributes?.episodeLength, 37)
    XCTAssertEqual(animeAttributes?.youtubeVideoID, "youtubeq1w2")
    XCTAssertFalse((animeAttributes?.isNSFW)!)
  }

  func testAnimeValidMissingData() {
    let json = AnimeTestData.validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes

    XCTAssertNotNil(anime)
    XCTAssertEqual(anime?.objectID, "4")
    XCTAssertEqual(anime?.type, "anime")
    XCTAssertNotNil(anime?.links)

    XCTAssertNotNil(animeAttributes)
    XCTAssertEqual(animeAttributes?.createdAt, "2013-02-20T17:08:20.229Z")
    XCTAssertEqual(animeAttributes?.updatedAt, "2018-01-07T18:00:14.142Z")
    XCTAssertNil(animeAttributes?.slug)
    XCTAssertEqual(animeAttributes?.synopsis, "testSynopsis")
    XCTAssertNotNil(animeAttributes?.titles)
    XCTAssertEqual(animeAttributes?.canonicalTitle, "Yurumates")
    XCTAssertNil(animeAttributes?.abbreviatedTitles)
    XCTAssertNil(animeAttributes?.averageRating)
    XCTAssertEqual((animeAttributes?.ratingFrequencies)!, [:])
    XCTAssertEqual(animeAttributes?.userCount, 504)
    XCTAssertEqual(animeAttributes?.favoritesCount, 2)
    XCTAssertNil(animeAttributes?.startDate)
    XCTAssertNil(animeAttributes?.endDate)
    XCTAssertNil(animeAttributes?.popularityRank)
    XCTAssertNil(animeAttributes?.ratingRank)
    XCTAssertNil(animeAttributes?.ageRating)
    XCTAssertNil(animeAttributes?.ageRatingGuide)
    XCTAssertEqual(animeAttributes?.subtype, AnimeTypeEnum.OVA)
    XCTAssertEqual(animeAttributes?.status, ReleaseStatusEnum.finished)
    XCTAssertNil(animeAttributes?.toBeAnnounced)
    XCTAssertNil(animeAttributes?.posterImage)
    XCTAssertNil(animeAttributes?.coverImage)
    XCTAssertNil(animeAttributes?.episodeCount)
    XCTAssertNil(animeAttributes?.episodeLength)
    XCTAssertNil(animeAttributes?.youtubeVideoID)
    XCTAssertFalse((animeAttributes?.isNSFW)!)
  }

  func testAnimeValidNilData() {
    let json = AnimeTestData.validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes

    XCTAssertNotNil(anime)
    XCTAssertEqual(anime?.objectID, "4")
    XCTAssertEqual(anime?.type, "anime")
    XCTAssertNotNil(anime?.links)

    XCTAssertNotNil(animeAttributes)
    XCTAssertEqual(animeAttributes?.createdAt, "2013-02-20T17:08:20.229Z")
    XCTAssertEqual(animeAttributes?.updatedAt, "2018-01-07T18:00:14.142Z")
    XCTAssertNil(animeAttributes?.slug)
    XCTAssertEqual(animeAttributes?.synopsis, "testSynopsis")
    XCTAssertNotNil(animeAttributes?.titles)
    XCTAssertEqual(animeAttributes?.canonicalTitle, "Yurumates")
    XCTAssertNil(animeAttributes?.abbreviatedTitles)
    XCTAssertNil(animeAttributes?.averageRating)
    XCTAssertEqual((animeAttributes?.ratingFrequencies)!, [:])
    XCTAssertEqual(animeAttributes?.userCount, 504)
    XCTAssertEqual(animeAttributes?.favoritesCount, 2)
    XCTAssertNil(animeAttributes?.startDate)
    XCTAssertNil(animeAttributes?.endDate)
    XCTAssertNil(animeAttributes?.popularityRank)
    XCTAssertNil(animeAttributes?.ratingRank)
    XCTAssertNil(animeAttributes?.ageRating)
    XCTAssertNil(animeAttributes?.ageRatingGuide)
    XCTAssertEqual(animeAttributes?.subtype, AnimeTypeEnum.OVA)
    XCTAssertEqual(animeAttributes?.status, ReleaseStatusEnum.finished)
    XCTAssertNil(animeAttributes?.toBeAnnounced)
    XCTAssertNil(animeAttributes?.posterImage)
    XCTAssertNil(animeAttributes?.coverImage)
    XCTAssertNil(animeAttributes?.episodeCount)
    XCTAssertNil(animeAttributes?.episodeLength)
    XCTAssertNil(animeAttributes?.youtubeVideoID)
    XCTAssertFalse((animeAttributes?.isNSFW)!)
  }

  func testAnimeInvalidMissingData() {
    let json = AnimeTestData.invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes

    XCTAssertNotNil(anime)
    XCTAssertEqual(anime?.objectID, "4")
    XCTAssertEqual(anime?.type, "anime")
    XCTAssertNotNil(anime?.links)

    XCTAssertNil(animeAttributes)
  }

  func testAnimeInvalidNilData() {
    let json = AnimeTestData.invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes

    XCTAssertNotNil(anime)
    XCTAssertEqual(anime?.objectID, "4")
    XCTAssertEqual(anime?.type, "anime")
    XCTAssertNotNil(anime?.links)

    XCTAssertNil(animeAttributes)
  }
}
