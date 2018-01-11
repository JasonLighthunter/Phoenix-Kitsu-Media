import XCTest
@testable import PhoenixKitsuMedia

class CategoryFavoriteTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "categoryFavorites",
    "links": [
      "self": "https://kitsu.io/api/edge/category-favorites/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
    ]
  ]
  
//  let validMissingDataJSON: [String : Any] = [
//    "id": "6",
//    "type": "categoryFavorites",
//    "links": [
//      "self": "https://kitsu.io/api/edge/category-favorites/6"
//    ],
//    "attributes": [
//      "createdAt": "2017-05-31T06:38:29.320Z",
//      "updatedAt": "2017-05-31T06:39:36.788Z",
//    ]
//  ]
//
//  let validNilDataJSON: [String : Any?] = [
//    "id": "6",
//    "type": "categoryFavorites",
//    "links": [
//      "self": "https://kitsu.io/api/edge/category-favorites/6"
//    ],
//    "attributes": [
//      "createdAt": "2017-05-31T06:38:29.320Z",
//      "updatedAt": "2017-05-31T06:39:36.788Z",
//    ]
//  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "categoryFavorites",
    "links": [
      "self": "https://kitsu.io/api/edge/category-favorites/6"
    ],
    "attributes": [
      "updatedAt": "2017-05-31T06:39:36.788Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "categoryFavorites",
    "links": [
      "self": "https://kitsu.io/api/edge/category-favorites/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": nil,
    ]
  ]
  
  var categoryFavorite: CategoryFavorite?
  var categoryFavoriteAttributes: CategoryFavoriteAttributes?
  
  override func tearDown() {
    categoryFavorite = nil
    categoryFavoriteAttributes = nil
    
    super.tearDown()
  }
  
  func testCategoryFavoriteFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      categoryFavorite = try? decoder.decode(CategoryFavorite.self, from: data!)
    } else {
      categoryFavorite = nil
    }
    categoryFavoriteAttributes = categoryFavorite?.attributes
    
    XCTAssertNotNil(categoryFavorite)
    
    XCTAssertEqual(categoryFavorite?.objectID, "6")
    XCTAssertEqual(categoryFavorite?.type, "categoryFavorites")
    
    XCTAssertNotNil(categoryFavorite?.links)
    
    XCTAssertNotNil(categoryFavoriteAttributes)
    
    XCTAssertEqual(categoryFavoriteAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(categoryFavoriteAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
  }
  
//  func testCategoryFavoriteValidMissingData() {
//    let json = validMissingDataJSON
//
//    if JSONSerialization.isValidJSONObject(json as Any) {
//      let data = try? JSONSerialization.data(withJSONObject: json as Any)
//      categoryFavorite = try? decoder.decode(CategoryFavorite.self, from: data!)
//    } else {
//      categoryFavorite = nil
//    }
//    categoryFavoriteAttributes = categoryFavorite?.attributes
//
//    XCTAssertNotNil(categoryFavorite)
//
//    XCTAssertEqual(categoryFavorite?.objectID, "6")
//    XCTAssertEqual(categoryFavorite?.type, "categories")
//
//    XCTAssertNotNil(categoryFavorite?.links)
//
//    XCTAssertNotNil(categoryFavoriteAttributes)
//
//    XCTAssertEqual(categoryFavoriteAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
//    XCTAssertEqual(categoryFavoriteAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
//  }
  
//  func testCategoryFavoriteValidNilData() {
//    let json = validNilDataJSON
//
//    if JSONSerialization.isValidJSONObject(json as Any) {
//      let data = try? JSONSerialization.data(withJSONObject: json as Any)
//      categoryFavorite = try? decoder.decode(CategoryFavorite.self, from: data!)
//    } else {
//      categoryFavorite = nil
//    }
//    categoryFavoriteAttributes = categoryFavorite?.attributes
//
//    XCTAssertNotNil(categoryFavorite)
//
//    XCTAssertEqual(categoryFavorite?.objectID, "6")
//    XCTAssertEqual(categoryFavorite?.type, "categories")
//
//    XCTAssertNotNil(categoryFavorite?.links)
//
//    XCTAssertNotNil(categoryFavoriteAttributes)
//
//    XCTAssertEqual(categoryFavoriteAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
//    XCTAssertEqual(categoryFavoriteAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
//  }
  
  func testCategoryFavoriteInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      categoryFavorite = try? decoder.decode(CategoryFavorite.self, from: data!)
    } else {
      categoryFavorite = nil
    }
    categoryFavoriteAttributes = categoryFavorite?.attributes
    
    XCTAssertNotNil(categoryFavorite)
    
    XCTAssertEqual(categoryFavorite?.objectID, "6")
    XCTAssertEqual(categoryFavorite?.type, "categoryFavorites")
    
    XCTAssertNotNil(categoryFavorite?.links)
    
    XCTAssertNil(categoryFavoriteAttributes)
  }
  
  func testCategoryFavoriteInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      categoryFavorite = try? decoder.decode(CategoryFavorite.self, from: data!)
    } else {
      categoryFavorite = nil
    }
    categoryFavoriteAttributes = categoryFavorite?.attributes
    
    XCTAssertNotNil(categoryFavorite)
    
    XCTAssertEqual(categoryFavorite?.objectID, "6")
    XCTAssertEqual(categoryFavorite?.type, "categoryFavorites")
    
    XCTAssertNotNil(categoryFavorite?.links)
    
    XCTAssertNil(categoryFavoriteAttributes)
  }
}
