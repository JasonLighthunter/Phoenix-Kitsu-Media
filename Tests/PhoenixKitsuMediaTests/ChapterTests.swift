import XCTest
@testable import PhoenixKitsuMedia

class ChapterTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "chapters",
    "links": [
      "self": "https://kitsu.io/api/edge/chapters/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Chapter 5"
      ],
      "canonicalTitle": "Chapter 5",
      "volumeNumber": 1,
      "number": 5,
      "synopsis": "testSynopsis",
      "published": "2018-01-23",
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
    "type": "chapters",
    "links": [
      "self": "https://kitsu.io/api/edge/chapters/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Chapter 5"
      ],
      "canonicalTitle": "Chapter 5",
      "number": 5
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "chapters",
    "links": [
      "self": "https://kitsu.io/api/edge/chapters/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Chapter 5"
      ],
      "canonicalTitle": "Chapter 5",
      "volumeNumber": nil,
      "number": 5,
      "synopsis": nil,
      "published": nil,
      "length": nil,
      "thumbnail": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "chapters",
    "links": [
      "self": "https://kitsu.io/api/edge/chapters/6"
    ],
    "attributes": [
      "createdAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Chapter 5"
      ],
      "canonicalTitle": "Chapter 5",
      "volumeNumber": 1,
      "number": 5,
      "synopsis": "testSynopsis",
      "published": "2018-01-23",
      "length": 45,
      "thumbnail": [
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
        "meta": [
          "dimensions": [
          ]
        ]
      ]
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "chapters",
    "links": [
      "self": "https://kitsu.io/api/edge/chapters/6"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": "2017-06-30T16:07:59.760Z",
      "titles": [
        "en_jp": "Chapter 5"
      ],
      "canonicalTitle": "Chapter 5",
      "volumeNumber": 1,
      "number": 5,
      "synopsis": "testSynopsis",
      "published": "2018-01-23",
      "length": 45,
      "thumbnail": [
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
        "meta": [
          "dimensions": [
          ]
        ]
      ]
    ]
  ]
  
  var chapter: Chapter?
  var chapterAttributes: ChapterAttributes?
  
  override func tearDown() {
    chapter = nil
    chapterAttributes = nil
    
    super.tearDown()
  }
  
  func testChapterFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      chapter = try? decoder.decode(Chapter.self, from: data!)
    } else {
      chapter = nil
    }
    chapterAttributes = chapter?.attributes
    
    XCTAssertNotNil(chapter)
    
    XCTAssertEqual(chapter?.objectID, "6")
    XCTAssertEqual(chapter?.type, "chapters")
    
    XCTAssertNotNil(chapter?.links)
    
    XCTAssertNotNil(chapterAttributes)
    
    XCTAssertEqual(chapterAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(chapterAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(chapterAttributes?.titles)
    
    XCTAssertEqual(chapterAttributes?.canonicalTitle, "Chapter 5")
    XCTAssertEqual(chapterAttributes?.volumeNumber, 1)
    XCTAssertEqual(chapterAttributes?.number, 5)
    XCTAssertEqual(chapterAttributes?.synopsis, "testSynopsis")
    XCTAssertEqual(chapterAttributes?.published, "2018-01-23")
    XCTAssertEqual(chapterAttributes?.length, 45)
    
    XCTAssertNotNil(chapterAttributes?.thumbnail)
  }
  
  func testChapterValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      chapter = try? decoder.decode(Chapter.self, from: data!)
    } else {
      chapter = nil
    }
    chapterAttributes = chapter?.attributes
    
    XCTAssertNotNil(chapter)
    
    XCTAssertEqual(chapter?.objectID, "6")
    XCTAssertEqual(chapter?.type, "chapters")
    
    XCTAssertNotNil(chapter?.links)
    
    XCTAssertNotNil(chapterAttributes)
    
    XCTAssertEqual(chapterAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(chapterAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(chapterAttributes?.titles)
    
    XCTAssertEqual(chapterAttributes?.canonicalTitle, "Chapter 5")
    XCTAssertNil(chapterAttributes?.volumeNumber)
    XCTAssertEqual(chapterAttributes?.number, 5)
    XCTAssertNil(chapterAttributes?.synopsis)
    XCTAssertNil(chapterAttributes?.published)
    XCTAssertNil(chapterAttributes?.length)
    XCTAssertNil(chapterAttributes?.thumbnail)
  }
  
  func testChapterValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      chapter = try? decoder.decode(Chapter.self, from: data!)
    } else {
      chapter = nil
    }
    chapterAttributes = chapter?.attributes
    
    XCTAssertNotNil(chapter)
    
    XCTAssertEqual(chapter?.objectID, "6")
    XCTAssertEqual(chapter?.type, "chapters")
    
    XCTAssertNotNil(chapter?.links)
    
    XCTAssertNotNil(chapterAttributes)
    
    XCTAssertEqual(chapterAttributes?.createdAt, "2017-06-30T16:07:59.760Z")
    XCTAssertEqual(chapterAttributes?.updatedAt, "2017-06-30T16:07:59.760Z")
    
    XCTAssertNotNil(chapterAttributes?.titles)
    
    XCTAssertEqual(chapterAttributes?.canonicalTitle, "Chapter 5")
    XCTAssertNil(chapterAttributes?.volumeNumber)
    XCTAssertEqual(chapterAttributes?.number, 5)
    XCTAssertNil(chapterAttributes?.synopsis)
    XCTAssertNil(chapterAttributes?.published)
    XCTAssertNil(chapterAttributes?.length)
    XCTAssertNil(chapterAttributes?.thumbnail)
  }
  
  func testChapterInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      chapter = try? decoder.decode(Chapter.self, from: data!)
    } else {
      chapter = nil
    }
    chapterAttributes = chapter?.attributes
    
    XCTAssertNil(chapter)
  }
  
  func testChapterInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      chapter = try? decoder.decode(Chapter.self, from: data!)
    } else {
      chapter = nil
    }
    
    XCTAssertNil(chapter)
  }
}

