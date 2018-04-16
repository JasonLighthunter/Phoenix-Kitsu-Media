class AnimeTestData {
  static let fullyFilledJSON: [String: Any] = [
    "id": "4",
    "type": "anime",
    "links": [
      "self": "https://kitsu.io/api/edge/anime/4"
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
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
        "meta": [
          "dimensions": [
            "tiny": [
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

  static let validMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "anime",
    "links": [
      "self": "https://kitsu.io/api/edge/anime/4"
    ],
    "attributes": [
      "createdAt": "2013-02-20T17:08:20.229Z",
      "updatedAt": "2018-01-07T18:00:14.142Z",
      "synopsis": "testSynopsis",
      "titles": [:],
      "canonicalTitle": "Yurumates",
      "ratingFrequencies": [:],
      "userCount": 504,
      "favoritesCount": 2,
      "subtype": "OVA",
      "status": "finished",
      "nsfw": false
    ]
  ]

  static let validNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "anime",
    "links": [
      "self": "https://kitsu.io/api/edge/anime/4"
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
      "averageRating": nil,
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

  static let invalidMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "anime",
    "links": [
      "self": "https://kitsu.io/api/edge/anime/4"
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
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
        "meta": [
          "dimensions": [
            "tiny": [
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

  static let invalidNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "anime",
    "links": [
      "self": "https://kitsu.io/api/edge/anime/4"
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
        "original": "https://media.kitsu.io/anime/poster_images/4444/original.jpg?1408452570",
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
        "tiny": "https://media.kitsu.io/anime/cover_images/4444/tiny.jpg?1475952838",
        "original": "https://media.kitsu.io/anime/cover_images/4444/original.png?1475952838",
        "meta": [
          "dimensions": [
            "tiny": [
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
}
