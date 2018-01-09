import XCTest
@testable import PhoenixKitsuMedia

class AnimeTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "anime",
    "links" : [
      "self" : "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "createdAt": "2013-02-20T17:08:20.229Z",
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "slug": "yurumates",
      "synopsis": "testSynopsis",
      "titles": [
        "en_jp": "Yurumates",
        "ja_jp": "ゆるめいつ"
      ],
      "canonicalTitle": "Yurumates",
      "abbreviatedTitles": ["test"],
      "averageRating": "67.0",
      "ratingFrequencies": [
        "2": "1",
        "3": "1"
      ],
      "userCount": 504,
      "favoritesCount": 2,
      "startDate": "2009-04-24",
      "endDate": "2009-04-24",
      "popularityRank": 3872,
      "ratingRank": 4339,
      "ageRating": "PG",
      "ageRatingGuide": "Teens 13 or older",
      "subtype": "OVA",
      "status": "finished",
      "tba": "winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/anime/poster_images/4444/tiny.jpg?1408452570",
        "small": "https://media.kitsu.io/anime/poster_images/4444/small.jpg?1408452570",
        "medium": "https://media.kitsu.io/anime/poster_images/4444/medium.jpg?1408452570",
        "large": "https://media.kitsu.io/anime/poster_images/4444/large.jpg?1408452570",
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "small": "https://media.kitsu.io/anime/cover_images/4444/small.jpg?1475952838",
        "large": "https://media.kitsu.io/anime/cover_images/4444/large.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
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
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "episodeCount": 1,
      "episodeLength": 37,
      "youtubeVideoId": "youtubeq1w2",
      "showType": "OVA",
      "nsfw": false
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "anime",
    "links" : [
      "self" : "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "createdAt": "2013-02-20T17:08:20.229Z",
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "synopsis": "testSynopsis",
      "titles": [:],
      "canonicalTitle": "Yurumates",
      "averageRating": "67.0",
      "ratingFrequencies": [:],
      "userCount": 504,
      "favoritesCount": 2,
      "subtype": "OVA",
      "status": "finished",
      "nsfw": false
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "anime",
    "links" : [
      "self" : "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "createdAt": "2013-02-20T17:08:20.229Z",
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "slug": nil,
      "synopsis": "testSynopsis",
      "titles": [
        "en_jp": nil,
        "ja_jp": nil
      ],
      "canonicalTitle": "Yurumates",
      "abbreviatedTitles": nil,
      "averageRating": "67.0",
      "ratingFrequencies": [:],
      "userCount": 504,
      "favoritesCount": 2,
      "startDate": nil,
      "endDate": nil,
      "popularityRank": nil,
      "ratingRank": nil,
      "ageRating": nil,
      "ageRatingGuide": nil,
      "subtype": "OVA",
      "status": "finished",
      "tba": nil,
      "posterImage": nil,
      "coverImage": nil,
      "episodeCount": nil,
      "episodeLength": nil,
      "youtubeVideoId": nil,
      "nsfw": false
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "anime",
    "links" : [
      "self" : "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "slug": "yurumates",
      "synopsis": "testSynopsis",
      "titles": [
        "en_jp": "Yurumates",
        "ja_jp": "ゆるめいつ"
      ],
      "canonicalTitle": "Yurumates",
      "abbreviatedTitles": ["abbreviatedTitle1"],
      "averageRating": "67.0",
      "userCount": 504,
      "favoritesCount": 2,
      "startDate": "2009-04-24",
      "endDate": "2009-04-24",
      "popularityRank": 3872,
      "ratingRank": 4339,
      "ageRating": "PG",
      "ageRatingGuide": "Teens 13 or older",
      "subtype": "OVA",
      "status": "finished",
      "tba": "winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/anime/poster_images/4444/tiny.jpg?1408452570",
        "small": "https://media.kitsu.io/anime/poster_images/4444/small.jpg?1408452570",
        "medium": "https://media.kitsu.io/anime/poster_images/4444/medium.jpg?1408452570",
        "large": "https://media.kitsu.io/anime/poster_images/4444/large.jpg?1408452570",
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "small": "https://media.kitsu.io/anime/cover_images/4444/small.jpg?1475952838",
        "large": "https://media.kitsu.io/anime/cover_images/4444/large.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
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
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "episodeCount": 1,
      "episodeLength": 37,
      "youtubeVideoId": "youtubeq1w2",
      "showType": "OVA",
      "nsfw": false
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "anime",
    "links" : [
      "self" : "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "slug": "yurumates",
      "synopsis": "testSynopsis",
      "titles": [
        "en_jp": "Yurumates",
        "ja_jp": "ゆるめいつ"
      ],
      "canonicalTitle": "Yurumates",
      "abbreviatedTitles": ["abbreviatedTitle1"],
      "averageRating": "67.0",
      "ratingFrequencies": [
        "2": "1",
        "3": "1",
        "4": "3",
        "5": "0",
        "6": "7",
        "7": "0",
        "8": "12",
        "9": "0",
        "10": "41",
        "11": "0",
        "12": "80",
        "13": "0",
        "14": "51",
        "15": "0",
        "16": "34",
        "17": "0",
        "18": "15",
        "19": "0",
        "20": "16"
      ],
      "userCount": 504,
      "favoritesCount": 2,
      "startDate": "2009-04-24",
      "endDate": "2009-04-24",
      "popularityRank": 3872,
      "ratingRank": 4339,
      "ageRating": "PG",
      "ageRatingGuide": "Teens 13 or older",
      "subtype": "OVA",
      "status": "finished",
      "tba": "winter 2020",
      "posterImage": [
        "tiny": "https://media.kitsu.io/anime/poster_images/4444/tiny.jpg?1408452570",
        "small": "https://media.kitsu.io/anime/poster_images/4444/small.jpg?1408452570",
        "medium": "https://media.kitsu.io/anime/poster_images/4444/medium.jpg?1408452570",
        "large": "https://media.kitsu.io/anime/poster_images/4444/large.jpg?1408452570",
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "small": "https://media.kitsu.io/anime/cover_images/4444/small.jpg?1475952838",
        "large": "https://media.kitsu.io/anime/cover_images/4444/large.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
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
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "episodeCount": 1,
      "episodeLength": 37,
      "youtubeVideoId": "youtubeq1w2",
      "showType": "OVA",
      "nsfw": false
    ]
  ]
  
  var anime: Anime?
  var animeAttributes: AnimeAttributes?
  
  override func tearDown() {
    anime = nil
    animeAttributes = nil
    
    super.tearDown()
  }
  
  func testAnimeFullyFilled() {
    let json = fullyFilledJSON
    
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
    XCTAssertEqual((animeAttributes?.ratingFrequencies)!, ["2":"1", "3":"1"])
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
    let json = validMissingDataJSON
    
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
    XCTAssertNil(animeAttributes?.averageRatings)
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
    let json = validNilDataJSON
    
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
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    animeAttributes = anime?.attributes
    
    XCTAssertNil(anime)
  }
  
  func testAnimeInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      anime = try? decoder.decode(Anime.self, from: data!)
    } else {
      anime = nil
    }
    
    XCTAssertNil(anime)
  }
}

