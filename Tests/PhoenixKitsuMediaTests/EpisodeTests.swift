import XCTest
@testable import PhoenixKitsuMedia

class EpisodeTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "episodes",
    "links": [
      "self": "https://kitsu.io/api/edge/episodes/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Episode 5"
      ],
      "canonicalTitle": "Episode 5",
      "seasonNumber": 1,
      "number": 5,
      "relativeNumber": 5,
      "synopsis": "testSynopsis",
      "airdate": "2018-01-23",
      "length": 45,
      "thumbnail": [
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
        "meta": [
          "dimensions": [:]
        ]
      ]
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "episodes",
    "links": [
      "self": "https://kitsu.io/api/edge/episodes/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Episode 5"
      ],
      "canonicalTitle": "Episode 5"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "episodes",
    "links": [
      "self": "https://kitsu.io/api/edge/episodes/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Episode 5"
      ],
      "canonicalTitle": "Episode 5",
      "seasonNumber": nil,
      "number": nil,
      "relativeNumber": nil,
      "synopsis": nil,
      "airdate": nil,
      "length": nil,
      "thumbnail": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "episodes",
    "links": [
      "self": "https://kitsu.io/api/edge/episodes/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Episode 5"
      ],
      "canonicalTitle": "Episode 5",
      "seasonNumber": 1,
      "number": 5,
      "relativeNumber": 5,
      "synopsis": "testSynopsis",
      "airdate": "2018-01-23",
      "length": 45,
      "thumbnail": [
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
        "meta": [
          "dimensions": [:]
        ]
      ]
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "episodes",
    "links": [
      "self": "https://kitsu.io/api/edge/episodes/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Episode 5"
      ],
      "canonicalTitle": nil,
      "seasonNumber": 1,
      "number": 5,
      "relativeNumber": 5,
      "synopsis": "testSynopsis",
      "airdate": "2018-01-23",
      "length": 45,
      "thumbnail": [
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
        "meta": [
          "dimensions": [:]
        ]
      ]
    ]
  ]
  
  var episode: Episode?
  var episodeAttributes: EpisodeAttributes?
  
  override func tearDown() {
    episode = nil
    episodeAttributes = nil
    
    super.tearDown()
  }
  
  func testEpisodeFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      episode = try? decoder.decode(Episode.self, from: data!)
    } else {
      episode = nil
    }
    episodeAttributes = episode?.attributes
    
    XCTAssertNotNil(episode)
    
    XCTAssertEqual(episode?.objectID, "6")
    XCTAssertEqual(episode?.type, "episodes")
    
    XCTAssertNotNil(episode?.links)
    
    XCTAssertNotNil(episodeAttributes)
    
    XCTAssertEqual(episodeAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(episodeAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(episodeAttributes?.titles)
    
    XCTAssertEqual(episodeAttributes?.canonicalTitle, "Episode 5")
    XCTAssertEqual(episodeAttributes?.seasonNumber, 1)
    XCTAssertEqual(episodeAttributes?.number, 5)
    XCTAssertEqual(episodeAttributes?.relativeNumber, 5)
    XCTAssertEqual(episodeAttributes?.synopsis, "testSynopsis")
    XCTAssertEqual(episodeAttributes?.airdate, "2018-01-23")
    XCTAssertEqual(episodeAttributes?.length, 45)
    
    XCTAssertNotNil(episodeAttributes?.thumbnail)
  }
  
  func testEpisodeValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      episode = try? decoder.decode(Episode.self, from: data!)
    } else {
      episode = nil
    }
    episodeAttributes = episode?.attributes
    
    XCTAssertNotNil(episode)
    
    XCTAssertEqual(episode?.objectID, "6")
    XCTAssertEqual(episode?.type, "episodes")
    
    XCTAssertNotNil(episode?.links)
    
    XCTAssertNotNil(episodeAttributes)
    
    XCTAssertEqual(episodeAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(episodeAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(episodeAttributes?.titles)
    
    XCTAssertEqual(episodeAttributes?.canonicalTitle, "Episode 5")
    XCTAssertNil(episodeAttributes?.seasonNumber)
    XCTAssertNil(episodeAttributes?.number)
    XCTAssertNil(episodeAttributes?.relativeNumber)
    XCTAssertNil(episodeAttributes?.synopsis)
    XCTAssertNil(episodeAttributes?.airdate)
    XCTAssertNil(episodeAttributes?.length)
    XCTAssertNil(episodeAttributes?.thumbnail)
  }
  
  func testEpisodeValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      episode = try? decoder.decode(Episode.self, from: data!)
    } else {
      episode = nil
    }
    episodeAttributes = episode?.attributes
    
    XCTAssertNotNil(episode)
    
    XCTAssertEqual(episode?.objectID, "6")
    XCTAssertEqual(episode?.type, "episodes")
    
    XCTAssertNotNil(episode?.links)
    
    XCTAssertNotNil(episodeAttributes)
    
    XCTAssertEqual(episodeAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(episodeAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(episodeAttributes?.titles)
    
    XCTAssertEqual(episodeAttributes?.canonicalTitle, "Episode 5")
    XCTAssertNil(episodeAttributes?.seasonNumber)
    XCTAssertNil(episodeAttributes?.number)
    XCTAssertNil(episodeAttributes?.relativeNumber)
    XCTAssertNil(episodeAttributes?.synopsis)
    XCTAssertNil(episodeAttributes?.airdate)
    XCTAssertNil(episodeAttributes?.length)
    XCTAssertNil(episodeAttributes?.thumbnail)
  }
  
  func testEpisodeInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      episode = try? decoder.decode(Episode.self, from: data!)
    } else {
      episode = nil
    }
    episodeAttributes = episode?.attributes
    
    XCTAssertNotNil(episode)
    
    XCTAssertEqual(episode?.objectID, "6")
    XCTAssertEqual(episode?.type, "episodes")
    
    XCTAssertNotNil(episode?.links)
    
    XCTAssertNil(episodeAttributes)
  }
  
  func testEpisodeInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      episode = try? decoder.decode(Episode.self, from: data!)
    } else {
      episode = nil
    }
    episodeAttributes = episode?.attributes
    
    XCTAssertNotNil(episode)
    
    XCTAssertEqual(episode?.objectID, "6")
    XCTAssertEqual(episode?.type, "episodes")
    
    XCTAssertNotNil(episode?.links)
    
    XCTAssertNil(episodeAttributes)
  }
}


