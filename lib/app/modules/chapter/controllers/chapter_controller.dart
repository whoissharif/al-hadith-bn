import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/database/app_database.dart';

class ChapterController extends GetxController {
  // Observable list of chapters
  final _chapters = <Chapter>[].obs;
  List<Chapter> get chapters => _chapters;

  // List to store original chapters for filtering
  late List<Chapter> originalChapters;

  // Observable variable to track the selected bookId
  final bookId = 1.obs;

  @override
  void onInit() {
    super.onInit();

    // Use the ever function to watch changes in bookId and trigger fetchChapters accordingly
    ever(bookId, (int id) {
      fetchChapters(id);
    });
  }

  // Asynchronously fetch chapters based on the provided bookId
  Future<void> fetchChapters(int bookId) async {
    try {
      // Retrieve chapters from the database
      final chapters = await AppDatabase.instance.getChaptersByBookId(bookId);

      // Assign chapters to the observable list and store a copy in originalChapters
      _chapters.assignAll(chapters);
      originalChapters = List.from(chapters);
    } catch (e) {
      // Handle and print an error if fetching chapters fails
      debugPrint('Error fetching chapters: $e');
    }
  }

  // Filter chapters based on the provided string
  void filterChapters(String query) {
    if (query.isEmpty) {
      // Reset the _chapters list to the original state if the query is empty
      _chapters.assignAll(originalChapters);
    } else {
      // Filter the _chapters list based on the query and update the list
      final filteredList = _chapters
          .where((chapter) =>
              chapter.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();

      _chapters.assignAll(filteredList);
    }
  }
}
