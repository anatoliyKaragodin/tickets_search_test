import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/presentation/providers/offers_provider.dart';
import 'package:tickets_search_test/presentation/providers/tickets_offers_provider.dart';
import 'package:tickets_search_test/presentation/providers/tickets_provider.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/difficult_route_sceeen/difficult_route_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/holidays_screen/holidays_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/tickets_search_screen/tickets_search_screen.dart';
import 'package:tickets_search_test/presentation/screens/hotels_screen/hotels_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/hot_tickets_screen/hot_tickets_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/main_menu_screen.dart';
import 'package:tickets_search_test/presentation/screens/profile_screen/profile_screen.dart';
import 'package:tickets_search_test/presentation/screens/short_path_screen/short_path_screen.dart';
import 'package:tickets_search_test/presentation/screens/subscribes_screen/subscribes_screen.dart';


class RouterHelper {
  static final RouterHelper _instance = RouterHelper._internal();

  static RouterHelper get instance => _instance;

  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> ticketsTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> hotelsTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> shortpathTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> subscribesTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> profileTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  static const String mainMenuPath = '/main_menu';

  static const String ticketsPath = '/main_menu/tickets';
  static const String hotelsPath = '/main_menu/hotels';
  static const String shortpathPath = '/main_menu/shortpath';
  static const String subscribesPath = '/main_menu/subscribes';
  static const String profilePath = '/main_menu/profile';

  static const String difficultRoutePath = '/main_menu/tickets/difficult_route';
  static const String holidaysPath = '/holidays';
  static const String hotTicketsPath = '/hot_tickets';

  factory RouterHelper() {
    return _instance;
  }

  RouterHelper._internal() {
    final routes = [
      // Main menu
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: ticketsTabNavigatorKey,
            routes: [
              GoRoute(
                path: ticketsPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: TicketsSearchScreen(
                        vm: TicketsSearchVM(
                            offersProvider: offersProvider,
                            ticketsProvider: ticketsProvider,
                            ticketsOffersProvider: ticketsOffersProvider)),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: hotelsTabNavigatorKey,
            routes: [
              GoRoute(
                path: hotelsPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const HotelsScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shortpathTabNavigatorKey,
            routes: [
              GoRoute(
                path: shortpathPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const ShortPathScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: subscribesTabNavigatorKey,
            routes: [
              GoRoute(
                path: subscribesPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const SubscribesScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: profileTabNavigatorKey,
            routes: [
              GoRoute(
                path: profilePath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const ProfileScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
        pageBuilder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return getPage(
            child: MainMenuScreen(
              child: navigationShell,
            ),
            state: state,
          );
        },
      ),
      // End main menu

      // Difficult route screen
      GoRoute(
          path: difficultRoutePath,
          pageBuilder: (context, state) {
            return getPage(child: const DifficultRouteScreen(), state: state);
          }),
      // Holidays screen
      GoRoute(
          path: holidaysPath,
          pageBuilder: (context, state) {
            return getPage(child: const HolidaysScreen(), state: state);
          }),
      // Hot ticktes  screen
      GoRoute(
          path: hotTicketsPath,
          pageBuilder: (context, state) {
            return getPage(child: const HotTicketsScreen(), state: state);
          }),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: ticketsPath,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
