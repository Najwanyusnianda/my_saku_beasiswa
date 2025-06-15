import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/dashboard_counts_provider.dart';
import '../application/dashboard_templates_count_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countAsync = ref.watch(dashboardCountsProvider);
    final templateCountAsync = ref.watch(templateCountProvider);

    return Scaffold(
      body:Center( 
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          countAsync.when(
            data: (c) => Text('$c beasiswa'),
            loading: () => const CircularProgressIndicator(),
            error: (e, _) => Text('Err $e'),
          ),
          const SizedBox(height: 20), // Spacing between widgets
          templateCountAsync.when(
            data: (count) => Text('$count templates'),
            loading: () => const CircularProgressIndicator(),
            error: (e, _) => Text('Template Error: $e'),
          ),
        ],
      ),
    ),
    floatingActionButton:   FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add'), // route /add diarahkan ke wizard
        child: const Icon(Icons.add),
      ),
    );
  }

  //add floating action button


}
