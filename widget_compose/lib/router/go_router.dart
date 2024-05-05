import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/screen/favorite_screen.dart';
import 'package:widget_compose/screen/home_screen.dart';
import 'package:widget_compose/screen/product_detail_screen.dart';
import 'package:widget_compose/screen/profile_screen.dart';
import 'package:widget_compose/screen/scaffold_with_nested_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _shellNavigatorProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
final _shellNavigatorSearchKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellSearch');

final router =
    GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(navigatorKey: _shellNavigatorHomeKey, routes: [
          GoRoute(
              path: '/',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: MyHomePage()),
              routes: [
                GoRoute(
                    path: 'detail',
                    builder: (context, state) {
                      return ProductDetailScreen(
                          product: state.extra as ProductToDisplay);
                    })
              ]),
        ]),
        StatefulShellBranch(navigatorKey: _shellNavigatorSearchKey, routes: [
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SearchScreen()),
          )
        ]),
        StatefulShellBranch(navigatorKey: _shellNavigatorProfileKey, routes: [
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileScreen()),
          )
        ])
      ])
]);
