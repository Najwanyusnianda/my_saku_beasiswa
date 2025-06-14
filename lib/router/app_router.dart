import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/dashboard/presentation/dashboard_screen.dart';
import '../features/scholarship/presentation/scholarship_list_screen.dart';
import '../features/application_tracker/presentation/all_applications_screen.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../core/widgets/main_scaffold.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/dashboard',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScaffold(child: child),
      routes: [
        GoRoute(
          path: '/dashboard',
          pageBuilder: (c, s) => NoTransitionPage(child: const DashboardScreen()),
        ),
        GoRoute(
          path: '/scholarships',
          pageBuilder: (c, s) => NoTransitionPage(child: const ScholarshipListScreen()),
        ),
        GoRoute(
          path: '/applications',
          pageBuilder: (c, s) => NoTransitionPage(child: const AllApplicationsScreen()),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (c, s) => NoTransitionPage(child: const SettingsScreen()),
        ),
      ],
    ),
  ],
);
