abstract class SearchHistoryRepository {
  Future<String?> getCityFromLDS();

  void saveCityFromLDS(String city);
}
