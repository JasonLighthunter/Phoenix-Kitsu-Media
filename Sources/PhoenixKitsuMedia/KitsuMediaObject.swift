import PhoenixKitsuCore

public protocol HasMediaAttributes: Decodable {
  associatedtype KitsuMediaObjectAttributesType: KitsuMediaObjectAttributes
  
  var attributes: KitsuMediaObjectAttributesType? {get}
  func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String
}

extension HasMediaAttributes {
  public func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String {
    var title: String? = ""

    switch identifier {
    case .americanEnglish:
      title = attributes?.titles.americanEnglish
    case .english:
      title = attributes?.titles.english
    case .romaji:
      title = attributes?.titles.romaji
    case .kanji:
      title = attributes?.titles.kanji
    case .canonical:
      title = attributes?.canonicalTitle
    }

    guard let returnValue = title else {
      guard let returnValue = attributes?.canonicalTitle else { return (self.attributes?.slug)! }
      return returnValue
    }
    return returnValue
  }
}

public class KitsuMediaObject<T: KitsuMediaObjectAttributes>: KitsuObject<T> {}
