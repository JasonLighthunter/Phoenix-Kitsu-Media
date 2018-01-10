import PhoenixKitsuCore
import Requestable

public protocol KitsuMediaObject: KitsuObject {
  associatedtype KitsuMediaObjectAttributesType: KitsuMediaObjectAttributes

  var objectID: String {get}
  var type: String {get}
  var links: Links {get}
  var attributes: KitsuMediaObjectAttributesType? {get}
  
  func getTitleWith(identifier: TitleLanguageIdentifierEnum) -> String
}
