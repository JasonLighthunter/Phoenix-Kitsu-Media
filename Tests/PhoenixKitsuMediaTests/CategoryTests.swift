import XCTest
@testable import PhoenixKitsuMedia

class CategoryTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "6",
    "type": "categories",
    "links": [
      "self": "https://kitsu.io/api/edge/categories/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "title": "All Girls School",
      "description": "This school is only for female students.",
      "totalMediaCount": 72,
      "slug": "all-girls-school",
      "nsfw": false,
      "childCount": 0,
      "image": [
        "tiny": "https://media.kitsu.io/categories/images/6/tiny.jpg?1496212709",
        "small": "https://media.kitsu.io/categories/images/6/small.jpg?1496212709",
        "medium": "https://media.kitsu.io/categories/images/6/medium.jpg?1496212709",
        "large": "https://media.kitsu.io/categories/images/6/large.jpg?1496212709",
        "original": "https://media.kitsu.io/categories/images/6/original.jpg?1496212709",
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
      ]
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "categories",
    "links": [
      "self": "https://kitsu.io/api/edge/categories/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "title": "All Girls School",
      "totalMediaCount": 72,
      "slug": "all-girls-school",
      "nsfw": false,
      "childCount": 0
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "categories",
    "links": [
      "self": "https://kitsu.io/api/edge/categories/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "title": "All Girls School",
      "description": nil,
      "totalMediaCount": 72,
      "slug": "all-girls-school",
      "nsfw": false,
      "childCount": 0,
      "image": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "6",
    "type": "categories",
    "links": [
      "self": "https://kitsu.io/api/edge/categories/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "description": "This school is only for female students",
      "totalMediaCount": 72,
      "slug": "all-girls-school",
      "nsfw": false,
      "childCount": 0,
      "image": [
        "tiny": "https://media.kitsu.io/categories/images/6/tiny.jpg?1496212709",
        "small": "https://media.kitsu.io/categories/images/6/small.jpg?1496212709",
        "medium": "https://media.kitsu.io/categories/images/6/medium.jpg?1496212709",
        "large": "https://media.kitsu.io/categories/images/6/large.jpg?1496212709",
        "original": "https://media.kitsu.io/categories/images/6/original.jpg?1496212709",
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
      ]
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "6",
    "type": "categories",
    "links": [
      "self": "https://kitsu.io/api/edge/categories/6"
    ],
    "attributes": [
      "createdAt": "2017-05-31T06:38:29.320Z",
      "updatedAt": "2017-05-31T06:39:36.788Z",
      "title": "All Girls School",
      "description": "This school is only for female students.",
      "totalMediaCount": 72,
      "slug": nil,
      "nsfw": false,
      "childCount": 0,
      "image": [
        "tiny": "https://media.kitsu.io/categories/images/6/tiny.jpg?1496212709",
        "small": "https://media.kitsu.io/categories/images/6/small.jpg?1496212709",
        "medium": "https://media.kitsu.io/categories/images/6/medium.jpg?1496212709",
        "large": "https://media.kitsu.io/categories/images/6/large.jpg?1496212709",
        "original": "https://media.kitsu.io/categories/images/6/original.jpg?1496212709",
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
      ]
    ]
  ]
  
  var category: PhoenixKitsuMedia.Category?
  var categoryAttributes: CategoryAttributes?
  
  override func tearDown() {
    category = nil
    categoryAttributes = nil
    
    super.tearDown()
  }
  
  func testCategoryFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      category = try? decoder.decode(Category.self, from: data!)
    } else {
      category = nil
    }
    categoryAttributes = category?.attributes
    
    XCTAssertNotNil(category)
    
    XCTAssertEqual(category?.objectID, "6")
    XCTAssertEqual(category?.type, "categories")
    
    XCTAssertNotNil(category?.links)
    
    XCTAssertNotNil(categoryAttributes)
    
    XCTAssertEqual(categoryAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(categoryAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(categoryAttributes?.title, "All Girls School")
    XCTAssertEqual(categoryAttributes?.description, "This school is only for female students.")
    XCTAssertEqual(categoryAttributes?.totalMediaCount, 72)
    XCTAssertEqual(categoryAttributes?.slug, "all-girls-school")
    XCTAssertFalse((categoryAttributes?.isNSFW)!)
    XCTAssertEqual(categoryAttributes?.childCount, 0)
    
    XCTAssertNotNil(categoryAttributes?.image)
  }
  
  func testCategoryValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      category = try? decoder.decode(Category.self, from: data!)
    } else {
      category = nil
    }
    categoryAttributes = category?.attributes
    
    XCTAssertNotNil(category)
    
    XCTAssertEqual(category?.objectID, "6")
    XCTAssertEqual(category?.type, "categories")
    
    XCTAssertNotNil(category?.links)
    
    XCTAssertNotNil(categoryAttributes)
    
    XCTAssertEqual(categoryAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(categoryAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(categoryAttributes?.title, "All Girls School")
    XCTAssertNil(categoryAttributes?.description)
    XCTAssertEqual(categoryAttributes?.totalMediaCount, 72)
    XCTAssertEqual(categoryAttributes?.slug, "all-girls-school")
    XCTAssertFalse((categoryAttributes?.isNSFW)!)
    XCTAssertEqual(categoryAttributes?.childCount, 0)
    XCTAssertNil(categoryAttributes?.image)
  }
  
  func testCategoryValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      category = try? decoder.decode(Category.self, from: data!)
    } else {
      category = nil
    }
    categoryAttributes = category?.attributes
    
    XCTAssertNotNil(category)
    
    XCTAssertEqual(category?.objectID, "6")
    XCTAssertEqual(category?.type, "categories")
    
    XCTAssertNotNil(category?.links)
    
    XCTAssertNotNil(categoryAttributes)
    
    XCTAssertEqual(categoryAttributes?.createdAt, "2017-05-31T06:38:29.320Z")
    XCTAssertEqual(categoryAttributes?.updatedAt, "2017-05-31T06:39:36.788Z")
    XCTAssertEqual(categoryAttributes?.title, "All Girls School")
    XCTAssertNil(categoryAttributes?.description)
    XCTAssertEqual(categoryAttributes?.totalMediaCount, 72)
    XCTAssertEqual(categoryAttributes?.slug, "all-girls-school")
    XCTAssertFalse((categoryAttributes?.isNSFW)!)
    XCTAssertEqual(categoryAttributes?.childCount, 0)
    XCTAssertNil(categoryAttributes?.image)
  }
  
  func testCategoryInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      category = try? decoder.decode(Category.self, from: data!)
    } else {
      category = nil
    }
    categoryAttributes = category?.attributes
    
    XCTAssertNil(category)
  }
  
  func testCategoryInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      category = try? decoder.decode(Category.self, from: data!)
    } else {
      category = nil
    }
    
    XCTAssertNil(category)
  }
}


