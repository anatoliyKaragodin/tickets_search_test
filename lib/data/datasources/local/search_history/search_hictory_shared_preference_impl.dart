import 'package:shared_preferences/shared_preferences.dart';

import 'search_history_lds.dart';

class SearchHistoryLDSsharedPreferencesImpl implements SearchHistoryLDS {
  final SharedPreferences lds;

  const SearchHistoryLDSsharedPreferencesImpl(this.lds);

  @override
  Future<String?> getCityFrom() async {
    return lds.getString('cityFrom');
  }

  @override
  void saveCityFrom(String city) async {
    await lds.setString('cityFrom', city);
  }
}
