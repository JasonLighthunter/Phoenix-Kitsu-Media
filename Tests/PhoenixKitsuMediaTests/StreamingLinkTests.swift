import XCTest
@testable import PhoenixKitsuMedia

class StreamingLinkTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "streamingLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/streaming-links/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "url": "http://example.com",
      "subs": [
        "en"
      ],
      "dubs": [
        "ja"
      ]
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "streamingLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/streaming-links/6"
    ],
    "attributes": [
      "url": "http://example.com",
      "subs": [
        "en"
      ],
      "dubs": [
        "ja"
      ]
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "streamingLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/streaming-links/6"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "url": "http://example.com",
      "subs": [
        "en"
      ],
      "dubs": [
        "ja"
      ]
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "streamingLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/streaming-links/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "url": "http://www.hulu.com/hacklegend-of-the-twilight",
      "dubs": [
        "ja"
      ]
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "streamingLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/streaming-links/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "url": nil,
      "subs": [
        "en"
      ],
      "dubs": [
        "ja"
      ]
    ]
  ]
  
  var streamingLink: StreamingLink?
  var streamingLinkAttributes: StreamingLinkAttributes?
  
  override func tearDown() {
    streamingLink = nil
    streamingLinkAttributes = nil
    
    super.tearDown()
  }
  
  func testStreamingLinkFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamingLink = try? decoder.decode(StreamingLink.self, from: data!)
    } else {
      streamingLink = nil
    }
    streamingLinkAttributes = streamingLink?.attributes
    
    XCTAssertNotNil(streamingLink)
    
    XCTAssertEqual(streamingLink?.objectID, "6")
    XCTAssertEqual(streamingLink?.type, "streamingLinks")
    
    XCTAssertNotNil(streamingLink?.links)
    
    XCTAssertNotNil(streamingLinkAttributes)
    
    XCTAssertEqual(streamingLinkAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(streamingLinkAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(streamingLinkAttributes?.url, "http://example.com")
    XCTAssertEqual((streamingLinkAttributes?.subs)!, ["en"])
    XCTAssertEqual((streamingLinkAttributes?.dubs)!, ["ja"])
  }
  
  func testStreamingLinkValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamingLink = try? decoder.decode(StreamingLink.self, from: data!)
    } else {
      streamingLink = nil
    }
    streamingLinkAttributes = streamingLink?.attributes
    
    XCTAssertNotNil(streamingLink)
    
    XCTAssertEqual(streamingLink?.objectID, "6")
    XCTAssertEqual(streamingLink?.type, "streamingLinks")
    
    XCTAssertNotNil(streamingLink?.links)
    
    XCTAssertNotNil(streamingLinkAttributes)
    
    XCTAssertNil(streamingLinkAttributes?.createdAt)
    XCTAssertNil(streamingLinkAttributes?.updatedAt)
    XCTAssertEqual(streamingLinkAttributes?.url, "http://example.com")
    XCTAssertEqual((streamingLinkAttributes?.subs)!, ["en"])
    XCTAssertEqual((streamingLinkAttributes?.dubs)!, ["ja"])
  }
  
  func testStreamingLinkValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamingLink = try? decoder.decode(StreamingLink.self, from: data!)
    } else {
      streamingLink = nil
    }
    streamingLinkAttributes = streamingLink?.attributes
    
    XCTAssertNotNil(streamingLink)
    
    XCTAssertEqual(streamingLink?.objectID, "6")
    XCTAssertEqual(streamingLink?.type, "streamingLinks")
    
    XCTAssertNotNil(streamingLink?.links)
    
    XCTAssertNotNil(streamingLinkAttributes)
    
    XCTAssertNil(streamingLinkAttributes?.createdAt)
    XCTAssertNil(streamingLinkAttributes?.updatedAt)
    XCTAssertEqual(streamingLinkAttributes?.url, "http://example.com")
    XCTAssertEqual((streamingLinkAttributes?.subs)!, ["en"])
    XCTAssertEqual((streamingLinkAttributes?.dubs)!, ["ja"])
  }
  
  func testStreamingLinkInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamingLink = try? decoder.decode(StreamingLink.self, from: data!)
    } else {
      streamingLink = nil
    }
    streamingLinkAttributes = streamingLink?.attributes
    
    XCTAssertNotNil(streamingLink)
    
    XCTAssertEqual(streamingLink?.objectID, "6")
    XCTAssertEqual(streamingLink?.type, "streamingLinks")
    
    XCTAssertNotNil(streamingLink?.links)
    
    XCTAssertNil(streamingLinkAttributes)
  }
  
  func testStreamingLinkInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      streamingLink = try? decoder.decode(StreamingLink.self, from: data!)
    } else {
      streamingLink = nil
    }
    streamingLinkAttributes = streamingLink?.attributes
    
    XCTAssertNotNil(streamingLink)
    
    XCTAssertEqual(streamingLink?.objectID, "6")
    XCTAssertEqual(streamingLink?.type, "streamingLinks")
    
    XCTAssertNotNil(streamingLink?.links)
    
    XCTAssertNil(streamingLinkAttributes)
  }
}
