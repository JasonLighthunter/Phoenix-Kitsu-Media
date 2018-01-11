public enum ReleaseStatusEnum: String, Decodable {
  case toBeAnnounced = "tba"
  case finished
  case current
  case upcoming
  case unreleased
}
