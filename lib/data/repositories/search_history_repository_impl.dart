import 'package:tickets_search_test/domain/repositories/search_history_repositiry.dart';

import '../datasources/local/search_history/search_history_lds.dart';

class SearchHistoryRepositoryImpl implements SearchHistoryRepository {
  final SearchHistoryLDS lds;

  const SearchHistoryRepositoryImpl(this.lds);

  @override
  Future<String?> getCityFromLDS() async {
    return await lds.getCityFrom();
  }

  @override
  void saveCityFromLDS(String city) {
    lds.saveCityFrom(city);
  }
}
