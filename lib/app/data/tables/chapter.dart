import 'package:drift/drift.dart';

@DataClassName('Chapter')
class Chapters extends Table {
  @override
  String get tableName => 'chapter';
  
  IntColumn get id => integer().nullable()();
  IntColumn get chapterId => integer().nullable()();
  IntColumn get bookId => integer().nullable()();
  TextColumn get title => text().nullable()();
  IntColumn get number => integer().nullable()();
  TextColumn get hadisRange => text().nullable()();
  TextColumn get bookName => text().nullable()();
}
