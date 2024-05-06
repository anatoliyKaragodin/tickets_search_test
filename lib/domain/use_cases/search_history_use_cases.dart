import 'package:tickets_search_test/domain/repositories/search_history_repositiry.dart';

class SearchHistoryUseCases {
  final SearchHistoryRepository repository;

  const SearchHistoryUseCases(this.repository);

  Future<String?> getCityFrom() async {
    return await repository.getCityFromLDS();
  }

  void saveCityFrom(String city) {
    repository.saveCityFromLDS(city);
  }
}
