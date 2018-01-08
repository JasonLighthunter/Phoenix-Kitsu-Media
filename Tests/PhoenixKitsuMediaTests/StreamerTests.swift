import XCTest
@testable import PhoenixKitsuMedia

class StreamerTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "streamers",
    "links": [
      "self": "https://kitsu.io/api/edge/streamers/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "siteName": "Hulu",
      "streamingLinksCount": 760,
      "logo": "logo"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "streamers",
    "links": [
      "self": "https://kitsu.io/api/edge/streamers/6"
    ],
    "attributes": [
      "siteName": "Hulu",
      "streamingLinksCount": 760,
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "streamers",
    "links": [
      "self": "https://kitsu.io/api/edge/streamers/6"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "siteName": "Hulu",
      "streamingLinksCount": 760,
      "logo": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "streamers",
    "links": [
      "self": "https://kitsu.io/api/edge/streamers/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "siteName": "Hulu",
      "logo": "logo"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "streamers",
    "links": [
      "self": "https://kitsu.io/api/edge/streamers/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "siteName": "Hulu",
      "streamingLinksCount": nil,
      "logo": "logo"
    ]
  ]
  
  var streamer: Streamer?
  var streamerAttributes: StreamerAttributes?
  
  override func tearDown() {
    streamer = nil
    streamerAttributes = nil
    
    super.tearDown()
  }
  
  func testStreamerFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamer = try? decoder.decode(Streamer.self, from: data!)
    } else {
      streamer = nil
    }
    streamerAttributes = streamer?.attributes
    
    XCTAssertNotNil(streamer)
    
    XCTAssertEqual(streamer?.objectID, "6")
    XCTAssertEqual(streamer?.type, "streamers")
    
    XCTAssertNotNil(streamer?.links)
    
    XCTAssertNotNil(streamerAttributes)
    
    XCTAssertEqual(streamerAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(streamerAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(streamerAttributes?.siteName, "Hulu")
    XCTAssertEqual(streamerAttributes?.streamingLinksCount, 760)
    XCTAssertEqual(streamerAttributes?.logo, "logo")
  }
  
  func testStreamerValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamer = try? decoder.decode(Streamer.self, from: data!)
    } else {
      streamer = nil
    }
    streamerAttributes = streamer?.attributes
    
    XCTAssertNotNil(streamer)
    
    XCTAssertEqual(streamer?.objectID, "6")
    XCTAssertEqual(streamer?.type, "streamers")
    
    XCTAssertNotNil(streamer?.links)
    
    XCTAssertNotNil(streamerAttributes)
    
    XCTAssertNil(streamerAttributes?.createdAt)
    XCTAssertNil(streamerAttributes?.updatedAt)
    XCTAssertEqual(streamerAttributes?.siteName, "Hulu")
    XCTAssertEqual(streamerAttributes?.streamingLinksCount, 760)
    XCTAssertNil(streamerAttributes?.logo)
  }
  
  func testStreamerValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamer = try? decoder.decode(Streamer.self, from: data!)
    } else {
      streamer = nil
    }
    streamerAttributes = streamer?.attributes
    
    XCTAssertNotNil(streamer)
    
    XCTAssertEqual(streamer?.objectID, "6")
    XCTAssertEqual(streamer?.type, "streamers")
    
    XCTAssertNotNil(streamer?.links)
    
    XCTAssertNotNil(streamerAttributes)
    
    XCTAssertNil(streamerAttributes?.createdAt)
    XCTAssertNil(streamerAttributes?.updatedAt)
    XCTAssertEqual(streamerAttributes?.siteName, "Hulu")
    XCTAssertEqual(streamerAttributes?.streamingLinksCount, 760)
    XCTAssertNil(streamerAttributes?.logo)
  }
  
  func testStreamerInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamer = try? decoder.decode(Streamer.self, from: data!)
    } else {
      streamer = nil
    }
    streamerAttributes = streamer?.attributes
    
    XCTAssertNil(streamer)
  }
  
  func testStreamerInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamer = try? decoder.decode(Streamer.self, from: data!)
    } else {
      streamer = nil
    }
    
    XCTAssertNil(streamer)
  }
}


