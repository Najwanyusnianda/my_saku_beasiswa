import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/dashboard_counts_provider.dart';
import '../application/dashboard_templates_count_provider.dart';
import '../../../../core/providers.dart'; // pastikan provider scholarshipDaoProvider ada di sini

// Tambahkan provider nearestDeadlineProvider jika belum didefinisikan di tempat lain
final nearestDeadlineProvider = StreamProvider<DateTime?>((ref) {
  final dao = ref.watch(scholarshipDaoProvider);
  return dao.watchAll().map((l) {
    if (l.isEmpty) return null;
    l.sort((a, b) => a.deadline.compareTo(b.deadline));
    return l.first.deadline;
  });
});

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countAsync = ref.watch(dashboardCountsProvider);
    final templateCountAsync = ref.watch(templateCountProvider);
    final deadlineAsync = ref.watch(nearestDeadlineProvider);

    return Scaffold(
      body: Center(
        child: Column(
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
            const SizedBox(height: 20), // Spacing tambahan untuk deadline
            deadlineAsync.when(
              data: (deadline) => Text(
                deadline != null
                    ? 'Deadline Terdekat: ${deadline.toLocal()}'
                    : 'Belum ada deadline',
              ),
              loading: () => const CircularProgressIndicator(),
              error: (e, _) => Text('Deadline Error: $e'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}