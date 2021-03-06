import PhoenixKitsuCore

public protocol HasMediaObjectAttributes: HasKitsuObjectAttributes {
  associatedtype KitsuMediaObjectAttributesType: KitsuMediaObjectAttributes
  
  var attributes: KitsuMediaObjectAttributesType? {get}
  func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String
}

public class KitsuMediaObject<T : KitsuMediaObjectAttributes>: KitsuObject<T>,
HasMediaObjectAttributes {
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

