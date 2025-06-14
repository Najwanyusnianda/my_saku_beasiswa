import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/core/providers.dart';


// features/dashboard/application/dashboard_counts_provider.dart
final dashboardCountsProvider = FutureProvider<int>((ref) async {
  final dao = ref.watch(scholarshipDaoProvider);
  final list = await dao.watchAll().first;
  return list.length; // jumlah beasiswa
});
