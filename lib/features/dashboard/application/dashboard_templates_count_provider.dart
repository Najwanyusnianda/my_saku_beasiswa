import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/core/providers.dart';

// Tambahkan debug di Dashboard:
final templateCountProvider = FutureProvider<int>((ref) async {
  final dao = ref.watch(templateDaoProvider);
  final list = await dao.getCachedTemplates();
  return list.length;
});

