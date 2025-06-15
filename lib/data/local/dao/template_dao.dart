import 'package:drift/drift.dart';
import '../app_database.dart';

part 'template_dao.g.dart';

@DriftAccessor(tables: [CachedTemplates])
class TemplateDao extends DatabaseAccessor<AppDatabase>
    with _$TemplateDaoMixin {
  TemplateDao(super.db);

  // --- method yang memang sudah ada ---
  Future<void> upsert(List<CachedTemplatesCompanion> rows) async {
    await batch((b) {
      for (final row in rows) {
        b.insert(cachedTemplates, row, mode: InsertMode.insertOrReplace);
      }
    });
  }

  Future<CachedTemplate?> findById(String id) =>
      (select(cachedTemplates)..where((t) => t.id.equals(id))).getSingleOrNull();

  // --- ↓ TAMBAHKAN INI ↓ ---
  Future<List<CachedTemplate>> getCachedTemplates() {
    return select(cachedTemplates).get();
  }

  // Jika butuh stream (real-time watch):
  Stream<List<CachedTemplate>> watchCachedTemplates() {
    return select(cachedTemplates).watch();
  }

}

