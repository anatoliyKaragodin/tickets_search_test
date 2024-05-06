// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:tickets_search_test/data/datasources/local/search_history/search_history_lds.dart';
// import 'package:tickets_search_test/data/repositories/search_history_repository_impl.dart';

// class MockSearchHistoryLDS extends Mock implements SearchHistoryLDS {}

// void main() {
//   late SearchHistoryRepositoryImpl repository;
//   late SearchHistoryLDS mockLDS;

//   setUp(() {
//     mockLDS = MockSearchHistoryLDS();
//     repository = SearchHistoryRepositoryImpl(mockLDS);
//   });

//   test('getCityFromLDS should return city from LDS', () async {
//     // Arrange
//     final city = 'New York';
//     when(mockLDS.getCityFrom()).thenAnswer((_) async => city);

//     // Act
//     final result = await repository.getCityFromLDS();

//     // Assert
//     expect(result, city);
//   });

//   test('saveCityFromLDS should save city to LDS', () {
//     // Arrange
//     final city = 'London';

//     // Act
//     repository.saveCityFromLDS(city);

//     // Assert
//     verify(mockLDS.saveCityFrom(city));
//   });
// }