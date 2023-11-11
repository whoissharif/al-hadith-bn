import 'package:drift/drift.dart';

@DataClassName('Section')
class Sections extends Table {
  @override
  String get tableName => 'section';

  IntColumn get id => integer().nullable()();
  IntColumn get bookId => integer().nullable()();
  TextColumn get bookName => text().nullable()();
  IntColumn get chapterId => integer().nullable()();
  IntColumn get sectionId => integer().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get preface => text().nullable()();
  TextColumn get number => text().nullable()();
  TextColumn get sortOrder => text().nullable()();
}
