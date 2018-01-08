import XCTest
@testable import PhoenixKitsuMedia

class MappingTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "mappings",
    "links": [
      "self": "https://kitsu.io/api/edge/mappings/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "externalSite": "myanimelist/anime",
      "externalId": "4718"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "mappings",
    "links": [
      "self": "https://kitsu.io/api/edge/mappings/6"
    ],
    "attributes": [
      "externalSite": "myanimelist/anime",
      "externalId": "4718"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "mappings",
    "links": [
      "self": "https://kitsu.io/api/edge/mappings/6"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "externalSite": "myanimelist/anime",
      "externalId": "4718"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "mappings",
    "links": [
      "self": "https://kitsu.io/api/edge/mappings/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "externalId": "4718"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "mappings",
    "links": [
      "self": "https://kitsu.io/api/edge/mappings/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "externalSite": "myanimelist/anime",
      "externalId": nil
    ]
  ]
  
  var mapping: Mapping?
  var mappingAttributes: MappingAttributes?
  
  override func tearDown() {
    mapping = nil
    mappingAttributes = nil
    
    super.tearDown()
  }
  
  func testMappingFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mapping = try? decoder.decode(Mapping.self, from: data!)
    } else {
      mapping = nil
    }
    mappingAttributes = mapping?.attributes
    
    XCTAssertNotNil(mapping)
    
    XCTAssertEqual(mapping?.objectID, "6")
    XCTAssertEqual(mapping?.type, "mappings")
    
    XCTAssertNotNil(mapping?.links)
    
    XCTAssertNotNil(mappingAttributes)
    
    XCTAssertEqual(mappingAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(mappingAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(mappingAttributes?.externalSite, ExternalSiteEnum.myAnimeListAnime)
    XCTAssertEqual(mappingAttributes?.externalID, "4718")
  }
  
  func testMappingValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mapping = try? decoder.decode(Mapping.self, from: data!)
    } else {
      mapping = nil
    }
    mappingAttributes = mapping?.attributes
    
    XCTAssertNotNil(mapping)
    
    XCTAssertEqual(mapping?.objectID, "6")
    XCTAssertEqual(mapping?.type, "mappings")
    
    XCTAssertNotNil(mapping?.links)
    
    XCTAssertNotNil(mappingAttributes)
    
    XCTAssertNil(mappingAttributes?.createdAt)
    XCTAssertNil(mappingAttributes?.updatedAt)
    XCTAssertEqual(mappingAttributes?.externalSite, ExternalSiteEnum.myAnimeListAnime)
    XCTAssertEqual(mappingAttributes?.externalID, "4718")
  }
  
  func testMappingValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mapping = try? decoder.decode(Mapping.self, from: data!)
    } else {
      mapping = nil
    }
    mappingAttributes = mapping?.attributes
    
    XCTAssertNotNil(mapping)
    
    XCTAssertEqual(mapping?.objectID, "6")
    XCTAssertEqual(mapping?.type, "mappings")
    
    XCTAssertNotNil(mapping?.links)
    
    XCTAssertNotNil(mappingAttributes)
    
    XCTAssertNil(mappingAttributes?.createdAt)
    XCTAssertNil(mappingAttributes?.updatedAt)
    XCTAssertEqual(mappingAttributes?.externalSite, ExternalSiteEnum.myAnimeListAnime)
    XCTAssertEqual(mappingAttributes?.externalID, "4718")
  }
  
  func testMappingInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mapping = try? decoder.decode(Mapping.self, from: data!)
    } else {
      mapping = nil
    }
    mappingAttributes = mapping?.attributes
    
    XCTAssertNil(mapping)
  }
  
  func testMappingInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mapping = try? decoder.decode(Mapping.self, from: data!)
    } else {
      mapping = nil
    }
    
    XCTAssertNil(mapping)
  }
}

