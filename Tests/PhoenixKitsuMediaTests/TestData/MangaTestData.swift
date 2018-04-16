class MangaTestData {
  static let fullyFilledJSON: [String: Any] = [
    "id": "4",
    "type": "manga",
    "links": [
      "self": "https://kitsu.io/api/edge/manga/4"
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
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush"
    ]
  ]

  static let validMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "manga",
    "links": [
      "self": "https://kitsu.io/api/edge/manga/4"
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

  static let validNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "manga",
    "links": [
      "self": "https://kitsu.io/api/edge/manga/4"
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

  static let invalidMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "manga",
    "links": [
      "self": "https://kitsu.io/api/edge/manga/4"
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
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush"
    ]
  ]

  static let invalidNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "manga",
    "links": [
      "self": "https://kitsu.io/api/edge/manga/4"
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
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/manga/poster_images/1/tiny.jpg?1434249400",
        "original": "https://media.kitsu.io/manga/poster_images/1/original.jpg?1434249400",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "chapterCount": 22,
      "volumeCount": 4,
      "serialization": "Comic Rush"
    ]
  ]
}
