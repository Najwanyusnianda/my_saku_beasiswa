import 'package:drift/drift.dart';
import '../app_database.dart';

part 'scholarship_dao.g.dart';

@DriftAccessor(tables: [Scholarships, Stages, Tasks, Requirements])
class ScholarshipDao extends DatabaseAccessor<AppDatabase>
    with _$ScholarshipDaoMixin {
  ScholarshipDao(super.db);

  // READ
  Stream<List<Scholarship>> watchAll() =>
      select(scholarships).watch();

  // INSERT Scholarship
  Future<int> insertScholarship(ScholarshipsCompanion data) =>
      into(scholarships).insert(data);

  // UPDATE STATUS
  Future<void> updateStatus(int id, String status) =>
      (update(scholarships)..where((tbl) => tbl.id.equals(id)))
          .write(ScholarshipsCompanion(status: Value(status)));
  
    // insert requirements
  Future<void> insertRequirements(List<RequirementsCompanion> rows) async {
    if (rows.isEmpty) return;
    await batch((b) => b.insertAll(requirements, rows));
}

  // insert stages and tasks
  Future<void> insertStages(List<StagesCompanion> rows) async {
    if (rows.isEmpty) return;
    await batch((b) => b.insertAll(stages, rows));
  }

  Future<void> insertTasks(List<TasksCompanion> rows) async {
    if (rows.isEmpty) return;
    await batch((b) => b.insertAll(tasks, rows));
  }

  Future<List<int>> insertStagesReturnIds(List<StagesCompanion> rows) async {
    final ids = <int>[];
    await transaction(() async {
      for (final row in rows) {
        final id = await into(stages).insert(row); // ← selalu mengembalikan id
        ids.add(id);
      }
    });
    return ids;
  }


  
}
