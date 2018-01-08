import XCTest
@testable import PhoenixKitsuMedia

class MediaRelationshipTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "mediaRelationships",
    "links": [
      "self": "https://kitsu.io/api/edge/media-relationships/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "role": "prequel",
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "mediaRelationships",
    "links": [
      "self": "https://kitsu.io/api/edge/media-relationships/6"
    ],
    "attributes": [
      "role": "prequel",
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "mediaRelationships",
    "links": [
      "self": "https://kitsu.io/api/edge/media-relationships/6"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "role": "prequel"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "mediaRelationships",
    "links": [
      "self": "https://kitsu.io/api/edge/media-relationships/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "mediaRelationships",
    "links": [
      "self": "https://kitsu.io/api/edge/media-relationships/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "role": nil
    ]
  ]
  
  var mediaRelationship: MediaRelationship?
  var mediaRelationshipAttributes: MediaRelationshipAttributes?
  
  override func tearDown() {
    mediaRelationship = nil
    mediaRelationshipAttributes = nil
    
    super.tearDown()
  }
  
  func testMediaRelationshipFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaRelationship = try? decoder.decode(MediaRelationship.self, from: data!)
    } else {
      mediaRelationship = nil
    }
    mediaRelationshipAttributes = mediaRelationship?.attributes
    
    XCTAssertNotNil(mediaRelationship)
    
    XCTAssertEqual(mediaRelationship?.objectID, "6")
    XCTAssertEqual(mediaRelationship?.type, "mediaRelationships")
    
    XCTAssertNotNil(mediaRelationship?.links)
    
    XCTAssertNotNil(mediaRelationshipAttributes)
    
    XCTAssertEqual(mediaRelationshipAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(mediaRelationshipAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(mediaRelationshipAttributes?.role, MediaRelationshipRoleEnum.prequel)
  }
  
  func testMediaRelationshipValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaRelationship = try? decoder.decode(MediaRelationship.self, from: data!)
    } else {
      mediaRelationship = nil
    }
    mediaRelationshipAttributes = mediaRelationship?.attributes
    
    XCTAssertNotNil(mediaRelationship)
    
    XCTAssertEqual(mediaRelationship?.objectID, "6")
    XCTAssertEqual(mediaRelationship?.type, "mediaRelationships")
    
    XCTAssertNotNil(mediaRelationship?.links)
    
    XCTAssertNotNil(mediaRelationshipAttributes)
    
    XCTAssertNil(mediaRelationshipAttributes?.createdAt)
    XCTAssertNil(mediaRelationshipAttributes?.updatedAt)
    XCTAssertEqual(mediaRelationshipAttributes?.role, MediaRelationshipRoleEnum.prequel)
  }
  
  func testMediaRelationshipValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaRelationship = try? decoder.decode(MediaRelationship.self, from: data!)
    } else {
      mediaRelationship = nil
    }
    mediaRelationshipAttributes = mediaRelationship?.attributes
    
    XCTAssertNotNil(mediaRelationship)
    
    XCTAssertEqual(mediaRelationship?.objectID, "6")
    XCTAssertEqual(mediaRelationship?.type, "mediaRelationships")
    
    XCTAssertNotNil(mediaRelationship?.links)
    
    XCTAssertNotNil(mediaRelationshipAttributes)
    
    XCTAssertNil(mediaRelationshipAttributes?.createdAt)
    XCTAssertNil(mediaRelationshipAttributes?.updatedAt)
    XCTAssertEqual(mediaRelationshipAttributes?.role, MediaRelationshipRoleEnum.prequel)
  }
  
  func testMediaRelationshipInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaRelationship = try? decoder.decode(MediaRelationship.self, from: data!)
    } else {
      mediaRelationship = nil
    }
    mediaRelationshipAttributes = mediaRelationship?.attributes
    
    XCTAssertNil(mediaRelationship)
  }
  
  func testMediaRelationshipInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaRelationship = try? decoder.decode(MediaRelationship.self, from: data!)
    } else {
      mediaRelationship = nil
    }
    
    XCTAssertNil(mediaRelationship)
  }
}


