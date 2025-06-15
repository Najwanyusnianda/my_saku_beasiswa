// lib/data/local/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:my_saku_beasiswa/data/local/dao/scholarship_dao.dart';
import 'package:my_saku_beasiswa/data/local/dao/template_dao.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';  // <-- hasil build_runner

/* ───────────────*/
/*  TABLE DEFINITIONS */
/* ───────────────*/

// 1. template cache
class CachedTemplates extends Table {
  TextColumn get id => text()();                          // ex: fulbright_2026_fsp
  TextColumn get name => text()();
  IntColumn  get version => integer().withDefault(const Constant(1))();
  TextColumn get provider => text()();
  TextColumn get jsonBlob => text()();                    // raw JSON string
  DateTimeColumn get updatedAt =>
      dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

// 2. scholarships created by user
class Scholarships extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get provider => text()();
  DateTimeColumn get deadline => dateTime()();
  TextColumn get status =>
      text().withDefault(const Constant('in_progress'))(); // enum-like
  TextColumn get templateId => text().nullable()();       // FK-ish
  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();
}

// 3. stages
class Stages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get scholarshipId =>
      integer().references(Scholarships, #id)();
  TextColumn get name => text()();
  IntColumn get order => integer()();
}

// 4. tasks per stage
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get stageId => integer().references(Stages, #id)();
  TextColumn get title => text()();
  TextColumn get note => text().nullable()();
  DateTimeColumn get dueDate => dateTime().nullable()();
  BoolColumn get isDone => boolean().withDefault(const Constant(false))();
}

// 5. requirements (checklist)
class Requirements extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Ubah dari integer() menjadi integer().nullable()
  IntColumn get stageId =>
      integer().nullable().references(Stages, #id)();

  TextColumn get title => text()();
  BoolColumn get isChecked =>
      boolean().withDefault(const Constant(false))();
}


/* ───────────────*/
/*  DATABASE ROOT  */
/* ───────────────*/

@DriftDatabase(
  tables: [CachedTemplates, Scholarships, Stages, Tasks, Requirements],
  daos: [ScholarshipDao, TemplateDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

/* ───────────────*/
/*  CONNECTION HELPER  */
/* ───────────────*/
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'saku_beasiswa.db'));
    return NativeDatabase.createInBackground(file);
  });
}
