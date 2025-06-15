import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/core/providers.dart';


// features/dashboard/application/dashboard_counts_provider.dart
final dashboardCountsProvider = StreamProvider<int>((ref) {
  final dao = ref.watch(scholarshipDaoProvider);
  return dao.watchAll().map((list) => list.length);
});

