import XCTest
@testable import PhoenixKitsuMedia

class MangaTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "manga",
    "links" : [
      "self" : "https://kitsu.io/api/edge/manga/4"
    ],
    "attributes": [
      "createdAt": "2013-12-18T13:48:24.164Z",
      "updatedAt": "2018-01-08T12:01:41.130Z",
      "slug": "guardian-dog",
      "synopsis": "Gengo Kurosaka leads a normal life.",
      "titles": [
        "en": nil,
        "en_jp": "Guardian Dog"
      ],
      "canonicalTitle": "Guardian Dog",
      "abbreviatedTitles": ["abbreviated1"],
      "averageRating": "34.65",
      "ratingFrequencies": [
        "2": "0",
        "3": "0"
      ],
      "userCount": 47,
      "favoritesCount": 1,
      "startDate": "2005-01-01",
      "endDate": "2005-01-01",
      "popularityRank": 4546,
      "ratingRank": 34,
      "ageRating": "G",
      "ageRatingGuide": "Horror",
      "subtype": "manga",
      "status": "current",
      "tba": "Winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush",
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "manga",
    "links" : [
      "self" : "https://kitsu.io/api/edge/manga/4"
    ],
    "attributes": [
      "createdAt": "2013-12-18T13:48:24.164Z",
      "updatedAt": "2018-01-08T12:01:41.130Z",
      "titles": [
        "en_jp": "Guardian Dog"
      ],
      "canonicalTitle": "Guardian Dog",
      "ratingFrequencies": [
        "2": "0",
        "3": "0"
      ],
      "userCount": 47,
      "favoritesCount": 1,
      "subtype": "manga",
      "status": "current"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "manga",
    "links" : [
      "self" : "https://kitsu.io/api/edge/manga/4"
    ],
    "attributes": [
      "createdAt": "2013-12-18T13:48:24.164Z",
      "updatedAt": "2018-01-08T12:01:41.130Z",
      "slug": nil,
      "synopsis": nil,
      "titles": [
        "en": nil,
        "en_jp": "Guardian Dog"
      ],
      "canonicalTitle": "Guardian Dog",
      "abbreviatedTitles": nil,
      "averageRating": nil,
      "ratingFrequencies": [
        "2": "0",
        "3": "0"
      ],
      "userCount": 47,
      "favoritesCount": 1,
      "startDate": nil,
      "endDate": nil,
      "popularityRank": nil,
      "ratingRank": nil,
      "ageRating": nil,
      "ageRatingGuide": nil,
      "subtype": "manga",
      "status": "current",
      "tba": nil,
      "posterImage": nil,
      "coverImage": nil,
      "chapterCount": nil,
      "volumeCount": nil,
      "serialization": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "manga",
    "links" : [
      "self" : "https://kitsu.io/api/edge/manga/4"
    ],
    "attributes": [
      "createdAt": "2013-12-18T13:48:24.164Z",
      "slug": "guardian-dog",
      "synopsis": "Gengo Kurosaka leads a normal life.",
      "titles": [
        "en": nil,
        "en_jp": "Guardian Dog"
      ],
      "canonicalTitle": "Guardian Dog",
      "abbreviatedTitles": ["abbreviated1"],
      "averageRating": "34.65",
      "ratingFrequencies": [
        "2": "0",
        "3": "0"
      ],
      "userCount": 47,
      "favoritesCount": 1,
      "startDate": "2005-01-01",
      "endDate": "2005-01-01",
      "popularityRank": 4546,
      "ratingRank": 34,
      "ageRating": "PG",
      "ageRatingGuide": "Horror",
      "subtype": "manga",
      "status": "current",
      "tba": "Winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "manga",
    "links" : [
      "self" : "https://kitsu.io/api/edge/manga/4"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2018-01-08T12:01:41.130Z",
      "slug": "guardian-dog",
      "synopsis": "Gengo Kurosaka leads a normal life.",
      "titles": [
        "en": nil,
        "en_jp": "Guardian Dog"
      ],
      "canonicalTitle": "Guardian Dog",
      "abbreviatedTitles": ["abbreviated1"],
      "averageRating": "34.65",
      "ratingFrequencies": [
        "2": "0",
        "3": "0"
      ],
      "userCount": 47,
      "favoritesCount": 1,
      "startDate": "2005-01-01",
      "endDate": "2005-01-01",
      "popularityRank": 4546,
      "ratingRank": 34,
      "ageRating": "P",
      "ageRatingGuide": "Horror",
      "subtype": "manga",
      "status": "current",
      "tba": "Winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "small": "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400",
        "medium": "https://media.kitsu.io/manga/poster_images/1/medium.jpg?1434249400",
        "large": "https://media.kitsu.io/manga/poster_images/1/large.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush",
    ]
  ]
  
  var manga: Manga?
  var mangaAttributes: MangaAttributes?
  
  override func tearDown() {
    manga = nil
    mangaAttributes = nil
    
    super.tearDown()
  }
  
  func testMangaFullyFilled() {
    let json = fullyFilledJSON
    
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
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2":"0", "3":"0"])
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
    let json = validMissingDataJSON
    
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
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2":"0", "3":"0"])
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
    let json = validNilDataJSON
    
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
    XCTAssertEqual((mangaAttributes?.ratingFrequencies)!, ["2":"0", "3":"0"])
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
    let json = invalidMissingDataJSON
    
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
    let json = invalidNilDataJSON
    
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


