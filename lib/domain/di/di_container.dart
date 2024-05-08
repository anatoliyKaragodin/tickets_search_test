import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tickets_search_test/data/datasources/local/search_history/search_hictory_shared_preference_impl.dart';
import 'package:tickets_search_test/data/datasources/local/search_history/search_history_lds.dart';
import 'package:tickets_search_test/data/datasources/remote/offer/offer_rds.dart';
import 'package:tickets_search_test/data/datasources/remote/ticket/ticket_rds.dart';
import 'package:tickets_search_test/data/datasources/remote/ticket/ticket_rds_api_impl.dart';
import 'package:tickets_search_test/data/datasources/remote/tickets_offer/tickets_offer_rds.dart';
import 'package:tickets_search_test/data/datasources/remote/tickets_offer/tickets_offer_rds_impl.dart';
import 'package:tickets_search_test/data/repositories/offer_repository_impl.dart';
import 'package:tickets_search_test/data/repositories/search_history_repository_impl.dart';
import 'package:tickets_search_test/data/repositories/ticket_repository_impl.dart';
import 'package:tickets_search_test/data/repositories/tickets_offer_repository_impl.dart';
import 'package:tickets_search_test/domain/repositories/offer_repository.dart';
import 'package:tickets_search_test/domain/repositories/ticket_repository.dart';
import 'package:tickets_search_test/domain/repositories/tickets_offer_repository.dart';

import '../../data/datasources/remote/offer/offer_rds_api_impl.dart';
import '../repositories/search_history_repositiry.dart';
import '../use_cases/offer_use_cases.dart';
import '../use_cases/search_history_use_cases.dart';
import '../use_cases/ticket_use_cases.dart';
import '../use_cases/tickets_offer_use_cases.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

  // Регистрация DS
  final dio = getIt.get<Dio>();
  final sharedPreferences = await getIt.getAsync<SharedPreferences>();

  getIt.registerSingleton<TicketRDS>(TicketRDSapiImpl(dio));
  getIt.registerSingleton<SearchHistoryLDS>(
      SearchHistoryLDSsharedPreferencesImpl(sharedPreferences));
  getIt.registerSingleton<OfferRDS>(OfferRDSapiImpl(dio));
  getIt.registerSingleton<TicketsOfferRDS>(TicketsOfferRDSapiImpl(dio));

  // Регистрация репозиториев
  final ticketRDS = getIt.get<TicketRDS>();
  final ticketsOfferRDS = getIt.get<TicketsOfferRDS>();
  final offerRDS = getIt.get<OfferRDS>();
  final searchHistoryLDS = getIt.get<SearchHistoryLDS>();

  getIt.registerSingleton<TicketRepository>(TicketRepositoryImpl(ticketRDS));
  getIt.registerSingleton<TicketsOfferRepository>(
      TicketsOfferRepositoryImpl(ticketsOfferRDS));
  getIt.registerSingleton<SearchHistoryRepository>(
      SearchHistoryRepositoryImpl(searchHistoryLDS));
  getIt.registerSingleton<OfferRepository>(OfferRepositoryImpl(offerRDS));

  // Регистрация use cases
  final ticketRepository = getIt.get<TicketRepository>();
  final searchHistoryRepository = getIt.get<SearchHistoryRepository>();
  final offerRepository = getIt.get<OfferRepository>();
  final ticketsOfferRepository = getIt.get<TicketsOfferRepository>();

  getIt.registerSingleton<TicketUseCases>(TicketUseCases(ticketRepository));
  getIt.registerSingleton<SearchHistoryUseCases>(
      SearchHistoryUseCases(searchHistoryRepository));
  getIt.registerSingleton<OfferUseCases>(OfferUseCases(offerRepository));
  getIt.registerSingleton<TicketsOfferUseCases>(
      TicketsOfferUseCases(ticketsOfferRepository));
}
