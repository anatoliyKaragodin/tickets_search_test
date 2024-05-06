import 'package:either_dart/either.dart';
import 'package:tickets_search_test/domain/repositories/search_history_repositiry.dart';

class SearchHistoryUseCases {
  final SearchHistoryRepository repository;

  const SearchHistoryUseCases(this.repository);

  Future<Either<Exception, String?>> getCityFrom() async {
    try {
      return Right(await repository.getCityFromLDS());
    } catch (e) {
      return Left(Exception('Failed to get cached city'));
    }
  }

  Either<Exception, void> saveCityFrom(String city) {
    try {
      repository.saveCityFromLDS(city);
      return const Right(null);
    } catch (e) {
      return Left(Exception('Failed to save city'));
    }
  }
}
