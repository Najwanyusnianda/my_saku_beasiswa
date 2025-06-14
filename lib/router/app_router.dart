import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// dashboard
import '../features/dashboard/presentation/dashboard_screen.dart';

//scholarship
import '../features/scholarship/presentation/wizard/add_edit_scholarship_wizard.dart';
import '../features/scholarship/presentation/scholarship_list_screen.dart';

//application tracker
import '../features/application_tracker/presentation/all_applications_screen.dart';

//settings
import '../features/settings/presentation/settings_screen.dart';

//core
import '../core/widgets/main_scaffold.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/dashboard',
  routes: [
    GoRoute(// add new scholarship
          path: '/add',
          pageBuilder: (c, s) =>
              MaterialPage(child: const AddEditScholarshipWizard()),
        ),
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
