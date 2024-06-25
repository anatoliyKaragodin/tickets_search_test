import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:tickets_search_test/presentation/screens/all_tickets_screen/all_tickets_screen.dart';
import 'package:tickets_search_test/presentation/screens/difficult_route_sceeen/difficult_route_screen.dart';
import 'package:tickets_search_test/presentation/screens/holidays_screen/holidays_screen.dart';
import 'package:tickets_search_test/presentation/screens/tickets_search_screen/tickets_search_screen.dart';
import 'package:tickets_search_test/presentation/screens/hotels_screen/hotels_screen.dart';
import 'package:tickets_search_test/presentation/screens/hot_tickets_screen/hot_tickets_screen.dart';
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

  // static const String mainMenuPath = '/main_menu';

  static const String ticketsPath = '/tickets';
  static const String hotelsPath = '/hotels';
  static const String shortpathPath = '/shortpath';
  static const String subscribesPath = '/subscribes';
  static const String profilePath = '/profile';

  static const String difficultRoutePath = '/difficult_route';
  static const String holidaysPath = '/holidays';
  static const String hotTicketsPath = '/hot_tickets';

  static const String allTicketsPath = 'all_tickets';

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
                      child: const TicketsSearchScreen(),
                      state: state,
                    );
                  },
                  routes: [
                    GoRoute(
                        path: allTicketsPath,
                        pageBuilder: (context, state) {
                          final extra = state.extra as Map<String, dynamic>;
                          return getPage(
                              child: AllTicketsScreen(
                                directionFrom: extra['directionFrom'],
                                directionWhere: extra['directionWhere'],
                                date: extra['date'],
                                returnDate: extra['returnDate'],
                                passengersCount: extra['passengersCount'],
                              ),
                              state: state);
                        }),
                  ]),
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
      // All tickets screen
      // GoRoute(
      //     path: allTicketsPath,
      //     pageBuilder: (context, state) {
      //       final extra = state.extra as Map<String, dynamic>;
      //       return getPage(
      //           child: AllTicketsScreen(
      //             vm: AllTicketsVM(ticketsProvider: ticketsProvider),
      //             directionFrom: extra['directionFrom'],
      //             directionWhere: extra['directionWhere'],
      //             date: extra['date'],
      //             passengersCount: extra['passengersCount'],
      //           ),
      //           state: state);
      //     }),
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
