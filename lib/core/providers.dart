import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/local/app_database.dart';
import '../data/local/dao/scholarship_dao.dart';
import '../data/local/dao/template_dao.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final scholarshipDaoProvider = Provider<ScholarshipDao>(
  (ref) => ScholarshipDao(ref.watch(databaseProvider)),
);

final templateDaoProvider = Provider<TemplateDao>(
  (ref) => TemplateDao(ref.watch(databaseProvider)),
);
