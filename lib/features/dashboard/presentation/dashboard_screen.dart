import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/dashboard_counts_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countAsync = ref.watch(dashboardCountsProvider);
    return countAsync.when(
      data: (c) => Center(child: Text('$c beasiswa')),
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text('Err $e'),
    );
  }
}
