import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../tables/book.dart';
import '../tables/chapter.dart';
import '../tables/hadith.dart';
import '../tables/section.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'hadith_bn_test.db'));

    if (!await file.exists()) {
      // Extracting the pre-populated database file from assets
      final blob = await rootBundle.load('assets/hadith_bn_test.db');
      final buffer = blob.buffer;
      await file.writeAsBytes(
          buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }
    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [Books, Sections, Chapters, Hadiths])
class AppDatabase extends _$AppDatabase {
  // Private constructor to prevent instantiation from outside
  AppDatabase._(QueryExecutor e) : super(e);

  // Singleton instance
  static AppDatabase? _instance;

  // Public method to access the singleton instance
  static AppDatabase get instance {
    // If the instance is not initialized, create a new one
    _instance ??= AppDatabase._(_openConnection());
    return _instance!;
  }

  @override
  int get schemaVersion => 1;

  /// Queries

  // Fetch all books from the database
  Future<List<Book>> getBooks() async {
    return await select(books).get();
  }

  // Fetch chapters for a given bookId
  Future<List<Chapter>> getChaptersByBookId(int bookId) async {
    return await (select(chapters)..where((tbl) => tbl.bookId.equals(bookId)))
        .get();
  }

  // Fetch sections for a given chapterId and bookId
  Future<List<Section>> getSectionsByBookIdAndChapterId(
      int chapterId, int bookId) async {
    return await (select(sections)
          ..where((tbl) =>
              tbl.chapterId.equals(chapterId) & tbl.bookId.equals(bookId)))
        .get();
  }

  // Fetch Hadiths for a given bookId, chapterId, and sectionId
  Future<List<Hadith>> getHadithsByBookChapterAndSectionId(
      int bookId, int chapterId, int sectionId) async {
    return await (select(hadiths)
          ..where((tbl) =>
              tbl.bookId.equals(bookId) &
              tbl.chapterId.equals(chapterId) &
              tbl.sectionId.equals(sectionId)))
        .get();
  }
}
