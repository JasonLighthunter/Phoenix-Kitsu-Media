//
//  Special.swift
//  PhoenixKitsuMediaTests
//
//  Created by Job Cuppen on 09/01/2018.
//

import XCTest
@testable import PhoenixKitsuMedia


class Special: XCTestCase {
  var string = ""
  var stringGood = ""
  
  func prepGood(){
    self.stringGood = """
        [
          
        {
            "id": "7929",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/7929"
            },
            "attributes": {
                "createdAt": "2013-08-17T19:45:59.778Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby",
                "synopsis": "The story takes place in a world filled with monsters and supernatural forces. The series focuses on four girls, each with their own unique weapon and powers, who come together as a team at Beacon Academy in a place called Vale where they are trained to battle these forces alongside other similar teams. Prior to the events of the series, mankind waged a battle of survival against the shadowy creatures of the Grimm until they discovered the power of Dust, which allowed them to fight back the monsters. Dust is used to power magical abilities in the series.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en_us": "RWBY"
                },
                "canonicalTitle": "RWBY",
                "abbreviatedTitles": null,
                "averageRating": "75.9",
                "ratingFrequencies": {
                    "2": "37",
                    "3": "0",
                    "4": "77",
                    "5": "2",
                    "6": "56",
                    "7": "2",
                    "8": "139",
                    "9": "4",
                    "10": "220",
                    "11": "7",
                    "12": "606",
                    "13": "15",
                    "14": "625",
                    "15": "17",
                    "16": "609",
                    "17": "19",
                    "18": "256",
                    "19": "3",
                    "20": "1113"
                },
                "userCount": 7707,
                "favoritesCount": 383,
                "startDate": "2013-07-18",
                "endDate": "2013-11-07",
                "popularityRank": 561,
                "ratingRank": 1082,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "ONA",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/7929/tiny.jpg?1475799620",
                    "small": "https://media.kitsu.io/anime/poster_images/7929/small.jpg?1475799620",
                    "medium": "https://media.kitsu.io/anime/poster_images/7929/medium.jpg?1475799620",
                    "large": "https://media.kitsu.io/anime/poster_images/7929/large.jpg?1475799620",
                    "original": "https://media.kitsu.io/anime/poster_images/7929/original.png?1475799620",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/7929/tiny.jpg?1421110594",
                    "small": "https://media.kitsu.io/anime/cover_images/7929/small.jpg?1421110594",
                    "large": "https://media.kitsu.io/anime/cover_images/7929/large.jpg?1421110594",
                    "original": "https://media.kitsu.io/anime/cover_images/7929/original.png?1421110594",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 16,
                "episodeLength": 8,
                "youtubeVideoId": "pYW2GmHB5xs",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/7929/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/7929/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/7929/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/7929/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/7929/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/7929/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/7929/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/7929/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/7929/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/7929/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/7929/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/7929/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/7929/anime-staff"
                    }
                }
            }
        },
        {
            "id": "12102",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/12102"
            },
            "attributes": {
                "createdAt": "2016-04-26T14:41:38.437Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-chibi",
                "synopsis": "RWBY Chibi will take our favorite ladies from the world of Remnant and put them in hilarious situations. As dark as RWBY Season 3 was, Chibi will put everyone from the world of RWBY into more innocent and childlike situations.\r\n\r\n(Source: iDigitalTimes)",
                "coverImageTopOffset": 70,
                "titles": {
                    "en": "",
                    "en_jp": "RWBY: Chibi",
                    "ja_jp": ""
                },
                "canonicalTitle": "RWBY: Chibi",
                "abbreviatedTitles": null,
                "averageRating": "72.77",
                "ratingFrequencies": {
                    "2": "4",
                    "3": "0",
                    "4": "7",
                    "5": "0",
                    "6": "1",
                    "7": "0",
                    "8": "14",
                    "9": "0",
                    "10": "16",
                    "11": "1",
                    "12": "39",
                    "13": "2",
                    "14": "50",
                    "15": "5",
                    "16": "37",
                    "17": "3",
                    "18": "19",
                    "19": "0",
                    "20": "47"
                },
                "userCount": 525,
                "favoritesCount": 13,
                "startDate": "2016-05-07",
                "endDate": "2016-10-15",
                "popularityRank": 3803,
                "ratingRank": 1967,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/12102/tiny.jpg?1475800187",
                    "small": "https://media.kitsu.io/anime/poster_images/12102/small.jpg?1475800187",
                    "medium": "https://media.kitsu.io/anime/poster_images/12102/medium.jpg?1475800187",
                    "large": "https://media.kitsu.io/anime/poster_images/12102/large.jpg?1475800187",
                    "original": "https://media.kitsu.io/anime/poster_images/12102/original.png?1475800187",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/12102/tiny.jpg?1466191279",
                    "small": "https://media.kitsu.io/anime/cover_images/12102/small.jpg?1466191279",
                    "large": "https://media.kitsu.io/anime/cover_images/12102/large.jpg?1466191279",
                    "original": "https://media.kitsu.io/anime/cover_images/12102/original.png?1466191279",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 24,
                "episodeLength": 4,
                "youtubeVideoId": "tu6D5jR1rSQ",
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/12102/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/12102/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/12102/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/12102/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/12102/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/12102/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/12102/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/12102/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/12102/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/12102/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/12102/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12102/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/12102/anime-staff"
                    }
                }
            }
        },
        {
            "id": "8278",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/8278"
            },
            "attributes": {
                "createdAt": "2014-02-01T03:11:27.420Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-ii",
                "synopsis": "Second volume of RWBY.",
                "coverImageTopOffset": 15,
                "titles": {
                    "en_us": "RWBY II"
                },
                "canonicalTitle": "RWBY II",
                "abbreviatedTitles": [
                    "RWBY Season 2",
                    "RWBY Volume 2"
                ],
                "averageRating": "81.67",
                "ratingFrequencies": {
                    "2": "11",
                    "3": "0",
                    "4": "14",
                    "5": "1",
                    "6": "13",
                    "7": "1",
                    "8": "45",
                    "9": "2",
                    "10": "81",
                    "11": "7",
                    "12": "230",
                    "13": "12",
                    "14": "372",
                    "15": "19",
                    "16": "517",
                    "17": "17",
                    "18": "247",
                    "19": "8",
                    "20": "871"
                },
                "userCount": 4939,
                "favoritesCount": 194,
                "startDate": "2014-07-24",
                "endDate": "2014-10-30",
                "popularityRank": 908,
                "ratingRank": 306,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "ONA",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/8278/tiny.jpg?1475799666",
                    "small": "https://media.kitsu.io/anime/poster_images/8278/small.jpg?1475799666",
                    "medium": "https://media.kitsu.io/anime/poster_images/8278/medium.jpg?1475799666",
                    "large": "https://media.kitsu.io/anime/poster_images/8278/large.jpg?1475799666",
                    "original": "https://media.kitsu.io/anime/poster_images/8278/original.png?1475799666",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/8278/tiny.jpg?1421110597",
                    "small": "https://media.kitsu.io/anime/cover_images/8278/small.jpg?1421110597",
                    "large": "https://media.kitsu.io/anime/cover_images/8278/large.jpg?1421110597",
                    "original": "https://media.kitsu.io/anime/cover_images/8278/original.png?1421110597",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 12,
                "episodeLength": 14,
                "youtubeVideoId": "tNAX4EQF2r8",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/8278/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/8278/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/8278/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/8278/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/8278/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/8278/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/8278/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/8278/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/8278/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/8278/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/8278/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/8278/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/8278/anime-staff"
                    }
                }
            }
        },
        {
            "id": "11013",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/11013"
            },
            "attributes": {
                "createdAt": "2015-06-04T15:31:42.151Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-prologue-trailers",
                "synopsis": "There are four trailers leading up to the premiere of RWBY. Each trailer is referred to by a certain color and letter, and features a character corresponding to these themes. For example, the \"Red,\" or \"R,\" Trailer featured the character \"Red\" Ruby Rose.\r\n\r\nUnlike regular previews, the trailers for RWBY did not contain footage seen in the series, instead opting for self-contained short films that told their own unique stories, acting more like prequels for the series proper than actual trailers. Each trailer revealed a little about the central characters' backstory.\r\n\r\n(Source: RWBY Wiki)",
                "coverImageTopOffset": 100,
                "titles": {
                    "en_us": "RWBY Prologue Trailers"
                },
                "canonicalTitle": "RWBY Prologue Trailers",
                "abbreviatedTitles": [
                    "RWBY Pilot"
                ],
                "averageRating": "82.99",
                "ratingFrequencies": {
                    "2": "5",
                    "3": "0",
                    "4": "2",
                    "5": "0",
                    "6": "5",
                    "7": "0",
                    "8": "9",
                    "9": "1",
                    "10": "6",
                    "11": "0",
                    "12": "56",
                    "13": "3",
                    "14": "55",
                    "15": "5",
                    "16": "115",
                    "17": "5",
                    "18": "54",
                    "19": "7",
                    "20": "225"
                },
                "userCount": 1081,
                "favoritesCount": 27,
                "startDate": "2012-11-05",
                "endDate": "2013-06-01",
                "popularityRank": 2683,
                "ratingRank": 210,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/11013/tiny.jpg?1433431901",
                    "small": "https://media.kitsu.io/anime/poster_images/11013/small.jpg?1433431901",
                    "medium": "https://media.kitsu.io/anime/poster_images/11013/medium.jpg?1433431901",
                    "large": "https://media.kitsu.io/anime/poster_images/11013/large.jpg?1433431901",
                    "original": "https://media.kitsu.io/anime/poster_images/11013/original.jpg?1433431901",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/11013/tiny.jpg?1433443096",
                    "small": "https://media.kitsu.io/anime/cover_images/11013/small.jpg?1433443096",
                    "large": "https://media.kitsu.io/anime/cover_images/11013/large.jpg?1433443096",
                    "original": "https://media.kitsu.io/anime/cover_images/11013/original.jpg?1433443096",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 4,
                "episodeLength": 5,
                "youtubeVideoId": "",
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/11013/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/11013/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/11013/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/11013/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/11013/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/11013/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/11013/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/11013/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/11013/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/11013/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/11013/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11013/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/11013/anime-staff"
                    }
                }
            }
        },
        {
            "id": "11117",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/11117"
            },
            "attributes": {
                "createdAt": "2015-06-20T12:49:23.292Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-iii",
                "synopsis": "Third volume of RWBY.",
                "coverImageTopOffset": 150,
                "titles": {
                    "en_us": "RWBY III"
                },
                "canonicalTitle": "RWBY III",
                "abbreviatedTitles": [
                    "RWBY Season 3",
                    "RWBY Volume 3"
                ],
                "averageRating": "85.42",
                "ratingFrequencies": {
                    "2": "9",
                    "3": "0",
                    "4": "10",
                    "5": "0",
                    "6": "2",
                    "7": "2",
                    "8": "8",
                    "9": "1",
                    "10": "29",
                    "11": "3",
                    "12": "86",
                    "13": "5",
                    "14": "182",
                    "15": "19",
                    "16": "321",
                    "17": "16",
                    "18": "229",
                    "19": "12",
                    "20": "681"
                },
                "userCount": 3165,
                "favoritesCount": 151,
                "startDate": "2015-10-24",
                "endDate": "2016-02-13",
                "popularityRank": 1352,
                "ratingRank": 81,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "ONA",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/11117/tiny.jpg?1480569316",
                    "small": "https://media.kitsu.io/anime/poster_images/11117/small.jpg?1480569316",
                    "medium": "https://media.kitsu.io/anime/poster_images/11117/medium.jpg?1480569316",
                    "large": "https://media.kitsu.io/anime/poster_images/11117/large.jpg?1480569316",
                    "original": "https://media.kitsu.io/anime/poster_images/11117/original.jpg?1480569316",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/11117/tiny.jpg?1455572795",
                    "small": "https://media.kitsu.io/anime/cover_images/11117/small.jpg?1455572795",
                    "large": "https://media.kitsu.io/anime/cover_images/11117/large.jpg?1455572795",
                    "original": "https://media.kitsu.io/anime/cover_images/11117/original.png?1455572795",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 12,
                "episodeLength": 17,
                "youtubeVideoId": "m3gDr2zgbAM",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/11117/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/11117/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/11117/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/11117/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/11117/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/11117/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/11117/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/11117/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/11117/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/11117/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/11117/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11117/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/11117/anime-staff"
                    }
                }
            }
        },
        {
            "id": "12279",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/12279"
            },
            "attributes": {
                "createdAt": "2016-07-02T12:37:11.364Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-iv",
                "synopsis": "It's been several months since the Fall of Beacon, and the world of Remnant is still recovering. Tensions are high, lives have been lost, and the members of Team RWBY... are divided. Each of our heroines now faces a journey of their own.",
                "coverImageTopOffset": 137,
                "titles": {
                    "en_us": "RWBY IV"
                },
                "canonicalTitle": "RWBY IV",
                "abbreviatedTitles": [
                    "RWBY Season 4",
                    "RWBY Volume 4"
                ],
                "averageRating": "78.99",
                "ratingFrequencies": {
                    "2": "5",
                    "3": "0",
                    "4": "1",
                    "5": "0",
                    "6": "3",
                    "7": "1",
                    "8": "20",
                    "9": "0",
                    "10": "22",
                    "11": "4",
                    "12": "43",
                    "13": "12",
                    "14": "122",
                    "15": "21",
                    "16": "150",
                    "17": "24",
                    "18": "65",
                    "19": "10",
                    "20": "155"
                },
                "userCount": 1493,
                "favoritesCount": 49,
                "startDate": "2016-10-22",
                "endDate": "2017-02-04",
                "popularityRank": 2238,
                "ratingRank": 586,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "ONA",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/12279/tiny.jpg?1476969624",
                    "small": "https://media.kitsu.io/anime/poster_images/12279/small.jpg?1476969624",
                    "medium": "https://media.kitsu.io/anime/poster_images/12279/medium.jpg?1476969624",
                    "large": "https://media.kitsu.io/anime/poster_images/12279/large.jpg?1476969624",
                    "original": "https://media.kitsu.io/anime/poster_images/12279/original.jpg?1476969624",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/12279/tiny.jpg?1477149253",
                    "small": "https://media.kitsu.io/anime/cover_images/12279/small.jpg?1477149253",
                    "large": "https://media.kitsu.io/anime/cover_images/12279/large.jpg?1477149253",
                    "original": "https://media.kitsu.io/anime/cover_images/12279/original.png?1477149253",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 12,
                "episodeLength": 20,
                "youtubeVideoId": "wAbwhVOwJQw",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/12279/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/12279/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/12279/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/12279/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/12279/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/12279/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/12279/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/12279/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/12279/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/12279/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/12279/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12279/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/12279/anime-staff"
                    }
                }
            }
        },
        {
            "id": "13247",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/13247"
            },
            "attributes": {
                "createdAt": "2017-03-21T12:54:05.195Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-v",
                "synopsis": "Volume 5 of RWBY",
                "coverImageTopOffset": 0,
                "titles": {
                    "en_us": "RWBY V"
                },
                "canonicalTitle": "RWBY V",
                "abbreviatedTitles": [
                    "RWBY Season 5",
                    "RWBY Volume 5"
                ],
                "averageRating": "80.3",
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "0",
                    "5": "0",
                    "6": "0",
                    "7": "0",
                    "8": "0",
                    "9": "0",
                    "10": "4",
                    "11": "1",
                    "12": "2",
                    "13": "0",
                    "14": "13",
                    "15": "2",
                    "16": "17",
                    "17": "4",
                    "18": "10",
                    "19": "3",
                    "20": "22"
                },
                "userCount": 663,
                "favoritesCount": 8,
                "startDate": "2017-10-14",
                "endDate": null,
                "popularityRank": 3422,
                "ratingRank": 442,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "ONA",
                "status": "current",
                "tba": "",
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/13247/tiny.jpg?1507154932",
                    "small": "https://media.kitsu.io/anime/poster_images/13247/small.jpg?1507154932",
                    "medium": "https://media.kitsu.io/anime/poster_images/13247/medium.jpg?1507154932",
                    "large": "https://media.kitsu.io/anime/poster_images/13247/large.jpg?1507154932",
                    "original": "https://media.kitsu.io/anime/poster_images/13247/original.jpg?1507154932",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 14,
                "episodeLength": 23,
                "youtubeVideoId": "",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/13247/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/13247/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/13247/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/13247/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/13247/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/13247/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/13247/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/13247/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/13247/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/13247/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/13247/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13247/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/13247/anime-staff"
                    }
                }
            }
        },
        {
            "id": "12674",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/12674"
            },
            "attributes": {
                "createdAt": "2016-10-20T13:08:03.688Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-the-story-so-far",
                "synopsis": "Recap of RWBY Volumes 1-3.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en": "",
                    "en_jp": "RWBY: The Story So Far",
                    "ja_jp": ""
                },
                "canonicalTitle": "RWBY: The Story So Far",
                "abbreviatedTitles": [
                    "RWBY Recap"
                ],
                "averageRating": "72.88",
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "0",
                    "5": "0",
                    "6": "0",
                    "7": "0",
                    "8": "7",
                    "9": "0",
                    "10": "10",
                    "11": "1",
                    "12": "20",
                    "13": "1",
                    "14": "18",
                    "15": "1",
                    "16": "11",
                    "17": "0",
                    "18": "2",
                    "19": "1",
                    "20": "18"
                },
                "userCount": 211,
                "favoritesCount": 0,
                "startDate": "2016-10-18",
                "endDate": "2016-10-18",
                "popularityRank": 5483,
                "ratingRank": 1937,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/12674/tiny.jpg?1476968919",
                    "small": "https://media.kitsu.io/anime/poster_images/12674/small.jpg?1476968919",
                    "medium": "https://media.kitsu.io/anime/poster_images/12674/medium.jpg?1476968919",
                    "large": "https://media.kitsu.io/anime/poster_images/12674/large.jpg?1476968919",
                    "original": "https://media.kitsu.io/anime/poster_images/12674/original.png?1476968919",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 1,
                "episodeLength": 4,
                "youtubeVideoId": "",
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/12674/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/12674/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/12674/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/12674/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/12674/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/12674/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/12674/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/12674/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/12674/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/12674/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/12674/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12674/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/12674/anime-staff"
                    }
                }
            }
        },
        {
            "id": "11439",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/11439"
            },
            "attributes": {
                "createdAt": "2015-10-10T01:27:25.685Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-iii-world-of-remnant",
                "synopsis": "Go beyond the story in this RWBY supplementary series, delving into the various forces that shape... the World of Remnant.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en": "",
                    "en_jp": "RWBY III World of Remnant",
                    "ja_jp": ""
                },
                "canonicalTitle": "RWBY III World of Remnant",
                "abbreviatedTitles": null,
                "averageRating": "75.54",
                "ratingFrequencies": {
                    "2": "1",
                    "3": "0",
                    "4": "5",
                    "5": "0",
                    "6": "1",
                    "7": "0",
                    "8": "9",
                    "9": "1",
                    "10": "16",
                    "11": "0",
                    "12": "48",
                    "13": "4",
                    "14": "48",
                    "15": "6",
                    "16": "48",
                    "17": "2",
                    "18": "19",
                    "19": "0",
                    "20": "67"
                },
                "userCount": 592,
                "favoritesCount": 4,
                "startDate": "2015-10-08",
                "endDate": "2016-01-23",
                "popularityRank": 3591,
                "ratingRank": 1154,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/11439/tiny.jpg?1444440541",
                    "small": "https://media.kitsu.io/anime/poster_images/11439/small.jpg?1444440541",
                    "medium": "https://media.kitsu.io/anime/poster_images/11439/medium.jpg?1444440541",
                    "large": "https://media.kitsu.io/anime/poster_images/11439/large.jpg?1444440541",
                    "original": "https://media.kitsu.io/anime/poster_images/11439/original.jpg?1444440541",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 4,
                "episodeLength": 4,
                "youtubeVideoId": "",
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/11439/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/11439/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/11439/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/11439/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/11439/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/11439/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/11439/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/11439/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/11439/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/11439/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/11439/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11439/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/11439/anime-staff"
                    }
                }
            }
        },
        {
            "id": "12629",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/12629"
            },
            "attributes": {
                "createdAt": "2016-10-04T19:30:11.525Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "rwby-iv-character-short",
                "synopsis": "It's been several months since the Fall of Beacon, and the world of Remnant is still recovering. Tensions are high, lives have been lost, and the members of Team RWBY... are divided. Each of our heroines now faces a journey of their own.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en": "",
                    "en_jp": "RWBY IV Character Short",
                    "ja_jp": ""
                },
                "canonicalTitle": "RWBY IV Character Short",
                "abbreviatedTitles": null,
                "averageRating": "78.01",
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "2",
                    "5": "0",
                    "6": "0",
                    "7": "0",
                    "8": "2",
                    "9": "0",
                    "10": "3",
                    "11": "1",
                    "12": "17",
                    "13": "3",
                    "14": "46",
                    "15": "3",
                    "16": "33",
                    "17": "2",
                    "18": "10",
                    "19": "1",
                    "20": "42"
                },
                "userCount": 336,
                "favoritesCount": 4,
                "startDate": "2016-10-03",
                "endDate": "2016-10-03",
                "popularityRank": 4581,
                "ratingRank": 710,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/12629/tiny.jpg?1475609460",
                    "small": "https://media.kitsu.io/anime/poster_images/12629/small.jpg?1475609460",
                    "medium": "https://media.kitsu.io/anime/poster_images/12629/medium.jpg?1475609460",
                    "large": "https://media.kitsu.io/anime/poster_images/12629/large.jpg?1475609460",
                    "original": "https://media.kitsu.io/anime/poster_images/12629/original.png?1475609460",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 1,
                "episodeLength": 5,
                "youtubeVideoId": "M0WeiG2-HRQ",
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/12629/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/12629/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/12629/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/12629/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/12629/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/12629/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/12629/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/12629/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/12629/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/12629/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/12629/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12629/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/12629/anime-staff"
                    }
                }
            }
        }
    ]
"""
  }
  func prepOne() {
    string = """
    [
        {
            "id": "5472",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/5472"
            },
            "attributes": {
                "createdAt": "2013-02-20T17:24:16.444Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "forestry",
                "synopsis": "A tale of a man and a woman who get in trouble by the mischief of smoke blown out of a tree's hole in the woods.\r\n(Source: Official website)",
                "coverImageTopOffset": 0,
                "titles": {
                    "en_jp": "Forestry",
                    "ja_jp": "フォレストリー"
                },
                "canonicalTitle": "Forestry",
                "abbreviatedTitles": [],
                "averageRating": null,
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "5",
                    "5": "0",
                    "6": "0",
                    "7": "0",
                    "8": "2",
                    "9": "0",
                    "10": "0",
                    "11": "0",
                    "12": "2",
                    "13": "0",
                    "14": "0",
                    "15": "0",
                    "16": "0",
                    "17": "0",
                    "18": "0",
                    "19": "0",
                    "20": "1"
                },
                "userCount": 24,
                "favoritesCount": 0,
                "startDate": "2008-01-01",
                "endDate": "2008-01-01",
                "popularityRank": 10239,
                "ratingRank": null,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/5472/tiny.jpg?1408455574",
                    "small": "https://media.kitsu.io/anime/poster_images/5472/small.jpg?1408455574",
                    "medium": "https://media.kitsu.io/anime/poster_images/5472/medium.jpg?1408455574",
                    "large": "https://media.kitsu.io/anime/poster_images/5472/large.jpg?1408455574",
                    "original": "https://media.kitsu.io/anime/poster_images/5472/original.jpg?1408455574",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 1,
                "episodeLength": 2,
                "youtubeVideoId": null,
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/5472/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/5472/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/5472/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/5472/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/5472/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/5472/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/5472/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/5472/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/5472/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/5472/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/5472/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5472/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/5472/anime-staff"
                    }
                }
            }
        },
        {
            "id": "12460",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/12460"
            },
            "attributes": {
                "createdAt": "2016-07-31T21:56:18.399Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "fuuka",
                "synopsis": "Yuu Haruna just moved into town and loves to use Twitter. Out on his way to buy dinner, he bumps into a mysterious girl, Fuuka Akitsuki, who breaks his phone thinking he was trying to take a picture of her panties. How will his new life change now?\r\n\r\n(Source: MAL News)",
                "coverImageTopOffset": 0,
                "titles": {
                    "en": "Fuuka",
                    "en_jp": "Fuuka",
                    "ja_jp": "風夏"
                },
                "canonicalTitle": "Fuuka",
                "abbreviatedTitles": [],
                "averageRating": "61.99",
                "ratingFrequencies": {
                    "2": "45",
                    "3": "3",
                    "4": "56",
                    "5": "5",
                    "6": "79",
                    "7": "1",
                    "8": "136",
                    "9": "2",
                    "10": "133",
                    "11": "9",
                    "12": "212",
                    "13": "27",
                    "14": "250",
                    "15": "28",
                    "16": "181",
                    "17": "14",
                    "18": "65",
                    "19": "4",
                    "20": "72"
                },
                "userCount": 3441,
                "favoritesCount": 20,
                "startDate": "2017-01-06",
                "endDate": "2017-03-24",
                "popularityRank": 1259,
                "ratingRank": 5703,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "TV",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/12460/tiny.jpg?1489936088",
                    "small": "https://media.kitsu.io/anime/poster_images/12460/small.jpg?1489936088",
                    "medium": "https://media.kitsu.io/anime/poster_images/12460/medium.jpg?1489936088",
                    "large": "https://media.kitsu.io/anime/poster_images/12460/large.jpg?1489936088",
                    "original": "https://media.kitsu.io/anime/poster_images/12460/original.jpg?1489936088",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/12460/tiny.jpg?1479835227",
                    "small": "https://media.kitsu.io/anime/cover_images/12460/small.jpg?1479835227",
                    "large": "https://media.kitsu.io/anime/cover_images/12460/large.jpg?1479835227",
                    "original": "https://media.kitsu.io/anime/cover_images/12460/original.jpg?1479835227",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 12,
                "episodeLength": 24,
                "youtubeVideoId": "Ar-6TjHRfB4",
                "showType": "TV",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/12460/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/12460/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/12460/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/12460/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/12460/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/12460/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/12460/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/12460/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/12460/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/12460/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/12460/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/12460/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/12460/anime-staff"
                    }
                }
            }
        },
        {
            "id": "679",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/679"
            },
            "attributes": {
                "createdAt": "2013-02-20T16:10:56.589Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "kaze-wo-mita-shounen",
                "synopsis": "Young boy Amon has mysterious powers. His dad is the cheif scientist for the Empire of the Golden Snake. He's invented weapons for this country in the past, but does not want his boy's powers to be used for destruction so he burns his research and tries to escape the country with his family. The mom and dad die in the escape and only Amon is left. He runs from the military, ends up on an island where he learns about the ancient people who could fly on the wind and talk to animals (as he can). Amon then ends up in a fishermen's village and makes friends with Maria. After this village is attacked by the Golden Snake army, the two run away with a band of rebels. Together, they try to stop the Empire of the Golden Snake from destroying and conquering everything. Based on the book by C.W. Nicol.",
                "coverImageTopOffset": 350,
                "titles": {
                    "en": "The Boy Who Saw the Wind",
                    "en_jp": "Kaze wo Mita Shounen",
                    "ja_jp": "風を見た少年"
                },
                "canonicalTitle": "Kaze wo Mita Shounen",
                "abbreviatedTitles": [
                    "Kaze o Mita Shonen"
                ],
                "averageRating": "67.8",
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "2",
                    "5": "0",
                    "6": "1",
                    "7": "0",
                    "8": "12",
                    "9": "0",
                    "10": "19",
                    "11": "0",
                    "12": "29",
                    "13": "0",
                    "14": "25",
                    "15": "0",
                    "16": "17",
                    "17": "0",
                    "18": "3",
                    "19": "0",
                    "20": "7"
                },
                "userCount": 278,
                "favoritesCount": 0,
                "startDate": "2000-07-22",
                "endDate": "2000-07-22",
                "popularityRank": 4928,
                "ratingRank": 3998,
                "ageRating": "PG",
                "ageRatingGuide": "Children",
                "subtype": "movie",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/679/tiny.jpg?1416270166",
                    "small": "https://media.kitsu.io/anime/poster_images/679/small.jpg?1416270166",
                    "medium": "https://media.kitsu.io/anime/poster_images/679/medium.jpg?1416270166",
                    "large": "https://media.kitsu.io/anime/poster_images/679/large.jpg?1416270166",
                    "original": "https://media.kitsu.io/anime/poster_images/679/original.jpg?1416270166",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/679/tiny.jpg?1416270168",
                    "small": "https://media.kitsu.io/anime/cover_images/679/small.jpg?1416270168",
                    "large": "https://media.kitsu.io/anime/cover_images/679/large.jpg?1416270168",
                    "original": "https://media.kitsu.io/anime/cover_images/679/original.jpg?1416270168",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 1,
                "episodeLength": 97,
                "youtubeVideoId": null,
                "showType": "movie",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/679/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/679/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/679/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/679/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/679/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/679/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/679/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/679/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/679/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/679/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/679/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/679/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/679/anime-staff"
                    }
                }
            }
        },
        {
            "id": "5486",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/5486"
            },
            "attributes": {
                "createdAt": "2013-02-20T17:24:31.129Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "hiyokoi",
                "synopsis": "Hiyori, a small and timid girl, goes to school for the first time in a year since an accident left her hospitalized. Follow her as she struggles with her social skills, tries to make friends and maybe even a little bit more...?\r\n(Source: One Manga)",
                "coverImageTopOffset": 250,
                "titles": {
                    "en_jp": "Hiyokoi",
                    "ja_jp": "ひよ恋"
                },
                "canonicalTitle": "Hiyokoi",
                "abbreviatedTitles": [],
                "averageRating": "73.19",
                "ratingFrequencies": {
                    "2": "2",
                    "3": "0",
                    "4": "15",
                    "5": "0",
                    "6": "26",
                    "7": "0",
                    "8": "72",
                    "9": "1",
                    "10": "130",
                    "11": "1",
                    "12": "293",
                    "13": "4",
                    "14": "386",
                    "15": "0",
                    "16": "449",
                    "17": "0",
                    "18": "158",
                    "19": "1",
                    "20": "229"
                },
                "userCount": 3229,
                "favoritesCount": 25,
                "startDate": "2010-07-30",
                "endDate": "2010-07-30",
                "popularityRank": 1323,
                "ratingRank": 1836,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "special",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/5486/tiny.jpg?1408455601",
                    "small": "https://media.kitsu.io/anime/poster_images/5486/small.jpg?1408455601",
                    "medium": "https://media.kitsu.io/anime/poster_images/5486/medium.jpg?1408455601",
                    "large": "https://media.kitsu.io/anime/poster_images/5486/large.jpg?1408455601",
                    "original": "https://media.kitsu.io/anime/poster_images/5486/original.jpg?1408455601",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/5486/tiny.jpg?1460147723",
                    "small": "https://media.kitsu.io/anime/cover_images/5486/small.jpg?1460147723",
                    "large": "https://media.kitsu.io/anime/cover_images/5486/large.jpg?1460147723",
                    "original": "https://media.kitsu.io/anime/cover_images/5486/original.jpeg?1460147723",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 1,
                "episodeLength": 22,
                "youtubeVideoId": null,
                "showType": "special",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/5486/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/5486/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/5486/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/5486/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/5486/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/5486/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/5486/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/5486/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/5486/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/5486/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/5486/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5486/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/5486/anime-staff"
                    }
                }
            }
        },
        {
            "id": "11621",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/11621"
            },
            "attributes": {
                "createdAt": "2015-12-15T19:23:13.235Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "the-red-turtle",
                "synopsis": "The film is a co-production between French studio Wild Bunch and Studio Ghibli, and tells the story of a man who tries to escape from a desert island and battles a giant turtle. The film has no dialogue.\r\n\r\n(Source: Wikipedia)",
                "coverImageTopOffset": 0,
                "titles": {
                    "en_us": "The Red Turtle"
                },
                "canonicalTitle": "The Red Turtle",
                "abbreviatedTitles": [
                    "La Tortue Rouge"
                ],
                "averageRating": "76.94",
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "0",
                    "5": "0",
                    "6": "0",
                    "7": "1",
                    "8": "3",
                    "9": "0",
                    "10": "4",
                    "11": "0",
                    "12": "5",
                    "13": "1",
                    "14": "10",
                    "15": "4",
                    "16": "15",
                    "17": "3",
                    "18": "14",
                    "19": "1",
                    "20": "10"
                },
                "userCount": 266,
                "favoritesCount": 3,
                "startDate": "2016-09-01",
                "endDate": "2016-09-01",
                "popularityRank": 5001,
                "ratingRank": 871,
                "ageRating": "PG",
                "ageRatingGuide": "",
                "subtype": "movie",
                "status": "finished",
                "tba": "",
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/11621/tiny.jpg?1475707681",
                    "small": "https://media.kitsu.io/anime/poster_images/11621/small.jpg?1475707681",
                    "medium": "https://media.kitsu.io/anime/poster_images/11621/medium.jpg?1475707681",
                    "large": "https://media.kitsu.io/anime/poster_images/11621/large.jpg?1475707681",
                    "original": "https://media.kitsu.io/anime/poster_images/11621/original.jpg?1475707681",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/11621/tiny.jpg?1508171797",
                    "small": "https://media.kitsu.io/anime/cover_images/11621/small.jpg?1508171797",
                    "large": "https://media.kitsu.io/anime/cover_images/11621/large.jpg?1508171797",
                    "original": "https://media.kitsu.io/anime/cover_images/11621/original.jpeg?1508171797",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": 840,
                                "height": 200
                            },
                            "small": {
                                "width": 1680,
                                "height": 400
                            },
                            "large": {
                                "width": 3360,
                                "height": 800
                            }
                        }
                    }
                },
                "episodeCount": 1,
                "episodeLength": 81,
                "youtubeVideoId": "0T3soLrQLfc",
                "showType": "movie",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/11621/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/11621/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/11621/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/11621/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/11621/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/11621/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/11621/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/11621/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/11621/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/11621/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/11621/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/11621/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/11621/anime-staff"
                    }
                }
            }
        },
        {
            "id": "556",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/556"
            },
            "attributes": {
                "createdAt": "2013-02-20T16:09:08.285Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "cat-soup",
                "synopsis": "The main character, a cat named Nyatto, embarks upon a journey to save his sister's soul, which was ripped in two when Nyatto tried to save her from Death. She trails after him, brain-dead. They encounter many brilliant, mind-bending situations, beginning with a disturbing magic show.\r\n(Source: ANN)",
                "coverImageTopOffset": 370,
                "titles": {
                    "en": "Cat Soup",
                    "en_jp": "Nekojiru-sou",
                    "ja_jp": "ねこぢる草"
                },
                "canonicalTitle": "Cat Soup",
                "abbreviatedTitles": [],
                "averageRating": "73.45",
                "ratingFrequencies": {
                    "2": "19",
                    "3": "0",
                    "4": "33",
                    "5": "0",
                    "6": "17",
                    "7": "0",
                    "8": "58",
                    "9": "0",
                    "10": "99",
                    "11": "2",
                    "12": "252",
                    "13": "5",
                    "14": "335",
                    "15": "6",
                    "16": "389",
                    "17": "2",
                    "18": "181",
                    "19": "0",
                    "20": "239"
                },
                "userCount": 3065,
                "favoritesCount": 76,
                "startDate": "2001-02-21",
                "endDate": "2001-02-21",
                "popularityRank": 1380,
                "ratingRank": 1741,
                "ageRating": "R",
                "ageRatingGuide": "17+ (violence & profanity)",
                "subtype": "OVA",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/556/tiny.jpg?1416268561",
                    "small": "https://media.kitsu.io/anime/poster_images/556/small.jpg?1416268561",
                    "medium": "https://media.kitsu.io/anime/poster_images/556/medium.jpg?1416268561",
                    "large": "https://media.kitsu.io/anime/poster_images/556/large.jpg?1416268561",
                    "original": "https://media.kitsu.io/anime/poster_images/556/original.jpg?1416268561",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/556/tiny.jpg?1416442358",
                    "small": "https://media.kitsu.io/anime/cover_images/556/small.jpg?1416442358",
                    "large": "https://media.kitsu.io/anime/cover_images/556/large.jpg?1416442358",
                    "original": "https://media.kitsu.io/anime/cover_images/556/original.jpg?1416442358",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 1,
                "episodeLength": 32,
                "youtubeVideoId": null,
                "showType": "OVA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/556/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/556/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/556/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/556/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/556/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/556/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/556/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/556/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/556/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/556/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/556/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/556/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/556/anime-staff"
                    }
                }
            }
        },
        {
            "id": "13311",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/13311"
            },
            "attributes": {
                "createdAt": "2017-03-31T15:53:25.363Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "henkei-shojo",
                "synopsis": "Shorts about girls who transform into machines. The first episode focuses on Haru, a girl who transforms into a fighter jet while trying to catch a hat blowing away in the wind.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en": "Henkei Shojo",
                    "en_jp": "Henkei Shoujo",
                    "ja_jp": "変形少女"
                },
                "canonicalTitle": "Henkei Shoujo",
                "abbreviatedTitles": [
                    "Transforming Girls",
                    "Henkei Girls"
                ],
                "averageRating": "61.99",
                "ratingFrequencies": {
                    "2": "13",
                    "3": "0",
                    "4": "3",
                    "5": "0",
                    "6": "6",
                    "7": "0",
                    "8": "4",
                    "9": "1",
                    "10": "11",
                    "11": "0",
                    "12": "5",
                    "13": "1",
                    "14": "3",
                    "15": "0",
                    "16": "3",
                    "17": "0",
                    "18": "2",
                    "19": "1",
                    "20": "8"
                },
                "userCount": 263,
                "favoritesCount": 0,
                "startDate": "2017-03-26",
                "endDate": null,
                "popularityRank": 5029,
                "ratingRank": 5702,
                "ageRating": "PG",
                "ageRatingGuide": "Children",
                "subtype": "ONA",
                "status": "current",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/13311/tiny.jpg?1490975602",
                    "small": "https://media.kitsu.io/anime/poster_images/13311/small.jpg?1490975602",
                    "medium": "https://media.kitsu.io/anime/poster_images/13311/medium.jpg?1490975602",
                    "large": "https://media.kitsu.io/anime/poster_images/13311/large.jpg?1490975602",
                    "original": "https://media.kitsu.io/anime/poster_images/13311/original.jpg?1490975602",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": null,
                "episodeLength": 1,
                "youtubeVideoId": "HhgiiVddR5c",
                "showType": "ONA",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/13311/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/13311/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/13311/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/13311/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/13311/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/13311/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/13311/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/13311/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/13311/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/13311/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/13311/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/13311/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/13311/anime-staff"
                    }
                }
            }
        },
        {
            "id": "5405",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/5405"
            },
            "attributes": {
                "createdAt": "2013-02-20T17:23:15.894Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "good-morning",
                "synopsis": "A not so \"good morning\" greets a little bear as he tries desperately to reach his destination on time but is hampered by improbable obstacles along the way. Directed and produced by Takashi Murakami of \"Superflat Monogram\" fame.",
                "coverImageTopOffset": 300,
                "titles": {
                    "en_jp": "Good Morning",
                    "ja_jp": "Good Morning"
                },
                "canonicalTitle": "Good Morning",
                "abbreviatedTitles": [],
                "averageRating": "61.53",
                "ratingFrequencies": {
                    "2": "9",
                    "3": "0",
                    "4": "5",
                    "5": "0",
                    "6": "9",
                    "7": "0",
                    "8": "20",
                    "9": "0",
                    "10": "42",
                    "11": "0",
                    "12": "28",
                    "13": "0",
                    "14": "20",
                    "15": "0",
                    "16": "19",
                    "17": "0",
                    "18": "8",
                    "19": "0",
                    "20": "7"
                },
                "userCount": 252,
                "favoritesCount": 1,
                "startDate": "2008-04-01",
                "endDate": "2008-04-01",
                "popularityRank": 5120,
                "ratingRank": 5793,
                "ageRating": "G",
                "ageRatingGuide": "All Ages",
                "subtype": "music",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/5405/tiny.jpg?1441223618",
                    "small": "https://media.kitsu.io/anime/poster_images/5405/small.jpg?1441223618",
                    "medium": "https://media.kitsu.io/anime/poster_images/5405/medium.jpg?1441223618",
                    "large": "https://media.kitsu.io/anime/poster_images/5405/large.jpg?1441223618",
                    "original": "https://media.kitsu.io/anime/poster_images/5405/original.jpg?1441223618",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/5405/tiny.jpg?1441223672",
                    "small": "https://media.kitsu.io/anime/cover_images/5405/small.jpg?1441223672",
                    "large": "https://media.kitsu.io/anime/cover_images/5405/large.jpg?1441223672",
                    "original": "https://media.kitsu.io/anime/cover_images/5405/original.jpg?1441223672",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 1,
                "episodeLength": 3,
                "youtubeVideoId": null,
                "showType": "music",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/5405/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/5405/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/5405/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/5405/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/5405/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/5405/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/5405/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/5405/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/5405/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/5405/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/5405/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5405/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/5405/anime-staff"
                    }
                }
            }
        },
        {
            "id": "5489",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/5489"
            },
            "attributes": {
                "createdAt": "2013-02-20T17:24:33.611Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "nekko-kun",
                "synopsis": "A cute clip for Minna no Uta. It is about a tree named Nekko-kun and about his life.",
                "coverImageTopOffset": 0,
                "titles": {
                    "en_jp": "Nekko-kun",
                    "ja_jp": "ねっこ君"
                },
                "canonicalTitle": "Nekko-kun",
                "abbreviatedTitles": [
                    "Minna no Uta",
                    "Mr. Nekko"
                ],
                "averageRating": null,
                "ratingFrequencies": {
                    "2": "0",
                    "3": "0",
                    "4": "0",
                    "5": "0",
                    "6": "3",
                    "7": "0",
                    "8": "4",
                    "9": "0",
                    "10": "3",
                    "11": "0",
                    "12": "0",
                    "13": "0",
                    "14": "0",
                    "15": "0",
                    "16": "1",
                    "17": "0",
                    "18": "0",
                    "19": "0",
                    "20": "0"
                },
                "userCount": 23,
                "favoritesCount": 0,
                "startDate": "2006-12-01",
                "endDate": "2006-12-01",
                "popularityRank": 10314,
                "ratingRank": null,
                "ageRating": "G",
                "ageRatingGuide": "All Ages",
                "subtype": "music",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/5489/tiny.jpg?1408455608",
                    "small": "https://media.kitsu.io/anime/poster_images/5489/small.jpg?1408455608",
                    "medium": "https://media.kitsu.io/anime/poster_images/5489/medium.jpg?1408455608",
                    "large": "https://media.kitsu.io/anime/poster_images/5489/large.jpg?1408455608",
                    "original": "https://media.kitsu.io/anime/poster_images/5489/original.jpg?1408455608",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": null,
                "episodeCount": 1,
                "episodeLength": 4,
                "youtubeVideoId": null,
                "showType": "music",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/5489/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/5489/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/5489/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/5489/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/5489/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/5489/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/5489/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/5489/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/5489/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/5489/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/5489/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/5489/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/5489/anime-staff"
                    }
                }
            }
        },
        {
            "id": "226",
            "type": "anime",
            "links": {
                "self": "https://kitsu.io/api/edge/anime/226"
            },
            "attributes": {
                "createdAt": "2013-02-20T16:03:46.378Z",
                "updatedAt": "2018-01-09T12:04:39.914Z",
                "slug": "kyou-kara-maou",
                "synopsis": "Kyou kara Maou! revolves around Yuri Shibuya, your average Japanese teenager. One day, Yuri sees a classmate being harassed by bullies. Thanks to this intervention, his friend is able to escape, but unfortunately Yuri becomes the new target of the bullies in the process and gets his head shoved into a toilet. But instead of water, the toilet contains a swirling portal that sucks him into another world, largely resembling medieval Europe. There, he is told that he will become the next Demon King due to his black hair and black eyes, traits only possessed by the demon's royal lineage.\r\nYuri's arrival is met with some skepticism by some of the demons, who view him as unworthy to be their king. However, after Yuri wins a duel by utilizing his magical powers, the demons slowly begin to acknowledge him as their monarch. Yuri must now learn what it takes be a true Demon King, as he tries to keep the peace between demons and humans in this strange new realm.",
                "coverImageTopOffset": 22,
                "titles": {
                    "en": "King From Now On!",
                    "en_jp": "Kyou kara Maou!",
                    "ja_jp": "今日からマ王！"
                },
                "canonicalTitle": "Kyou kara Maou!",
                "abbreviatedTitles": [
                    "Kyo Kara Maoh!",
                    "God? Save Our King",
                    "Maruma"
                ],
                "averageRating": "75.86",
                "ratingFrequencies": {
                    "2": "8",
                    "3": "0",
                    "4": "9",
                    "5": "0",
                    "6": "12",
                    "7": "0",
                    "8": "31",
                    "9": "0",
                    "10": "62",
                    "11": "0",
                    "12": "148",
                    "13": "0",
                    "14": "188",
                    "15": "0",
                    "16": "239",
                    "17": "0",
                    "18": "115",
                    "19": "0",
                    "20": "204"
                },
                "userCount": 2732,
                "favoritesCount": 65,
                "startDate": "2004-04-03",
                "endDate": "2006-02-25",
                "popularityRank": 1492,
                "ratingRank": 1087,
                "ageRating": "PG",
                "ageRatingGuide": "Teens 13 or older",
                "subtype": "TV",
                "status": "finished",
                "tba": null,
                "posterImage": {
                    "tiny": "https://media.kitsu.io/anime/poster_images/226/tiny.jpg?1408440978",
                    "small": "https://media.kitsu.io/anime/poster_images/226/small.jpg?1408440978",
                    "medium": "https://media.kitsu.io/anime/poster_images/226/medium.jpg?1408440978",
                    "large": "https://media.kitsu.io/anime/poster_images/226/large.jpg?1408440978",
                    "original": "https://media.kitsu.io/anime/poster_images/226/original.jpg?1408440978",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "medium": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "coverImage": {
                    "tiny": "https://media.kitsu.io/anime/cover_images/226/tiny.jpg?1455922895",
                    "small": "https://media.kitsu.io/anime/cover_images/226/small.jpg?1455922895",
                    "large": "https://media.kitsu.io/anime/cover_images/226/large.jpg?1455922895",
                    "original": "https://media.kitsu.io/anime/cover_images/226/original.jpg?1455922895",
                    "meta": {
                        "dimensions": {
                            "tiny": {
                                "width": null,
                                "height": null
                            },
                            "small": {
                                "width": null,
                                "height": null
                            },
                            "large": {
                                "width": null,
                                "height": null
                            }
                        }
                    }
                },
                "episodeCount": 78,
                "episodeLength": 25,
                "youtubeVideoId": "Fh75ePlxyVI",
                "showType": "TV",
                "nsfw": false
            },
            "relationships": {
                "genres": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/genres",
                        "related": "https://kitsu.io/api/edge/anime/226/genres"
                    }
                },
                "categories": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/categories",
                        "related": "https://kitsu.io/api/edge/anime/226/categories"
                    }
                },
                "castings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/castings",
                        "related": "https://kitsu.io/api/edge/anime/226/castings"
                    }
                },
                "installments": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/installments",
                        "related": "https://kitsu.io/api/edge/anime/226/installments"
                    }
                },
                "mappings": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/mappings",
                        "related": "https://kitsu.io/api/edge/anime/226/mappings"
                    }
                },
                "reviews": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/reviews",
                        "related": "https://kitsu.io/api/edge/anime/226/reviews"
                    }
                },
                "mediaRelationships": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/media-relationships",
                        "related": "https://kitsu.io/api/edge/anime/226/media-relationships"
                    }
                },
                "episodes": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/episodes",
                        "related": "https://kitsu.io/api/edge/anime/226/episodes"
                    }
                },
                "streamingLinks": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/streaming-links",
                        "related": "https://kitsu.io/api/edge/anime/226/streaming-links"
                    }
                },
                "animeProductions": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/anime-productions",
                        "related": "https://kitsu.io/api/edge/anime/226/anime-productions"
                    }
                },
                "animeCharacters": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/anime-characters",
                        "related": "https://kitsu.io/api/edge/anime/226/anime-characters"
                    }
                },
                "animeStaff": {
                    "links": {
                        "self": "https://kitsu.io/api/edge/anime/226/relationships/anime-staff",
                        "related": "https://kitsu.io/api/edge/anime/226/anime-staff"
                    }
                }
            }
        }
    ]
  """
  }
  
  func test() {
    
    
    prepOne()
    prepGood()
    do {
      try JSONDecoder().decode([Anime].self, from: stringGood.data(using: String.Encoding.utf8)!)
    } catch {
      print(error.localizedDescription)
    }
//    let animeAttributes = anime?.attributes
    
//    XCTAssertNotNil(anime)
    

    
//    XCTAssertNotNil(animeAttributes)
    
//    XCTAssertEqual(animeAttributes?.createdAt, "2013-02-20T17:08:20.229Z")
//    XCTAssertEqual(animeAttributes?.updatedAt, "2018-01-07T18:00:14.142Z")
//    XCTAssertEqual(animeAttributes?.slug, "yurumates")
//    XCTAssertEqual(animeAttributes?.synopsis, "testSynopsis")
    
//    XCTAssertNotNil(animeAttributes?.titles)
//
//    XCTAssertEqual(animeAttributes?.canonicalTitle, "Yurumates")
////    XCTAssertEqual((animeAttributes?.abbreviatedTitles)!, ["test"])
//    XCTAssertEqual(animeAttributes?.averageRating, "67.0")
////    XCTAssertEqual((animeAttributes?.ratingFrequencies)!, ["2":"1", "3":"1"])
//    XCTAssertEqual(animeAttributes?.userCount, 504)
//    XCTAssertEqual(animeAttributes?.favoritesCount, 2)
//    XCTAssertEqual(animeAttributes?.startDate, "2009-04-24")
//    XCTAssertEqual(animeAttributes?.endDate, "2009-04-24")
//    XCTAssertEqual(animeAttributes?.popularityRank, 3872)
//    XCTAssertEqual(animeAttributes?.ratingRank, 4339)
//    XCTAssertEqual(animeAttributes?.ageRating, AgeRatingEnum.parentalGuidance)
//    XCTAssertEqual(animeAttributes?.ageRatingGuide, "Teens 13 or older")
//    XCTAssertEqual(animeAttributes?.subtype, AnimeTypeEnum.OVA)
//    XCTAssertEqual(animeAttributes?.status, ReleaseStatusEnum.finished)
//    XCTAssertEqual(animeAttributes?.toBeAnnounced, "winter 2020")
//
//    XCTAssertNotNil(animeAttributes?.posterImage)
//    
//    XCTAssertNotNil(animeAttributes?.coverImage)
//    
//    XCTAssertEqual(animeAttributes?.episodeCount, 1)
//    XCTAssertEqual(animeAttributes?.episodeLength, 37)
//    XCTAssertEqual(animeAttributes?.youtubeVideoID, "youtubeq1w2")
//    XCTAssertFalse((animeAttributes?.isNSFW)!)
  }
  
  
}
