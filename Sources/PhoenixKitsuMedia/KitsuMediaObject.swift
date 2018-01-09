import PhoenixKitsuCore

public protocol KitsuMediaObject: KitsuObject {
//  var relationships: Any? {get}
  func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String
}
