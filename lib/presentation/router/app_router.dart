import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/home_menu_screen.dart';
import 'package:tickets_search_test/presentation/screens/hotels_screen/hotels_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/main_menu_screen.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/search_menu_screen/search_menu_sceen.dart';
import 'package:tickets_search_test/presentation/screens/profile_screen/profile_screen.dart';
import 'package:tickets_search_test/presentation/screens/short_path_screen/short_path_screen.dart';
import 'package:tickets_search_test/presentation/screens/subscribes_screen/subscribes_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();

  static const String homePath = '/home';
  static const String searchPath = '/search';

  static final router = GoRouter(routes: [
    StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: homePath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const TicketsScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: searchPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const SearchMenuScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ]),
  ]);

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

  factory RouterHelper() {
    return _instance;
  }

  RouterHelper._internal() {
    final routes = [
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
                    child: const TicketsScreen(),
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
