import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ss_restaurant/presentation/dashboard/view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _dashboardNavigatorKey =
    GlobalKey<NavigatorState>();

GoRouter router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
      path: '/',
      name: 'Dashboard',
      pageBuilder: (context, state) => NoTransitionPage(
              child: DashboardScreen(
            key: state.pageKey,
          )))
]);
