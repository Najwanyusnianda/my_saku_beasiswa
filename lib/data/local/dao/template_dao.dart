import 'package:drift/drift.dart';
import '../app_database.dart';

part 'template_dao.g.dart';

@DriftAccessor(tables: [CachedTemplates])
class TemplateDao extends DatabaseAccessor<AppDatabase>
    with _$TemplateDaoMixin {
  TemplateDao(AppDatabase db) : super(db);

  Future<void> upsert(List<CachedTemplatesCompanion> rows) async {
    await batch((b) {
      for (final row in rows) {
        b.insert(
          cachedTemplates,
          row,
          mode: InsertMode.insertOrReplace,
        );
      }
    });
  }

  Future<CachedTemplate?> findById(String id) =>
      (select(cachedTemplates)..where((t) => t.id.equals(id))).getSingleOrNull();
}
