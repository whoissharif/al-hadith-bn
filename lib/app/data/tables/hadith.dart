import 'package:drift/drift.dart';

@DataClassName('Hadith')
class Hadiths extends Table {
  @override
  String get tableName => 'hadith';

  IntColumn get id => integer().nullable()();
  IntColumn get bookId => integer().nullable()();
  TextColumn get bookName => text().nullable()();
  IntColumn get chapterId => integer().nullable()();
  IntColumn get sectionId => integer().nullable()();
  TextColumn get hadithKey => text().nullable()();
  IntColumn get hadithId => integer().nullable()();
  TextColumn get narrator => text().nullable()();
  TextColumn get bn => text().nullable()();
  TextColumn get ar => text().nullable()();
  TextColumn get arDiacless => text().nullable()();
  TextColumn get note => text().nullable()();
  IntColumn get gradeId => integer().nullable()();
  TextColumn get grade => text().nullable()();
  TextColumn get gradeColor => text().nullable()();
}
