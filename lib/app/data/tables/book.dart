import 'package:drift/drift.dart';

@DataClassName('Book')
class Books extends Table {
  IntColumn get id => integer().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get titleAr => text().nullable()();
  IntColumn get numberOfHadis => integer().nullable()();
  TextColumn get abvrCode => text().nullable()();
  TextColumn get bookName => text().nullable()();
  TextColumn get bookDescr => text().nullable()();
  TextColumn get colorCode => text().nullable()();
}






