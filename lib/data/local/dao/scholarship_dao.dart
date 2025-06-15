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

  // INSERT
  Future<int> insertScholarship(ScholarshipsCompanion data) =>
      into(scholarships).insert(data);

  // UPDATE STATUS
  Future<void> updateStatus(int id, String status) =>
      (update(scholarships)..where((tbl) => tbl.id.equals(id)))
          .write(ScholarshipsCompanion(status: Value(status)));
}
