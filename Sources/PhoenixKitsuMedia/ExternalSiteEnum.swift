public enum ExternalSiteEnum: String, Decodable {
  case anidb
  case myAnimeListAnime = "myanimelist/anime"
  case myAnimeListManga = "myanimelist/manga"
  case TVDBSeason = "thetvdb/season"
  case TVDBSeries = "thetvdb/series"
}
