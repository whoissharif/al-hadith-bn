import '../../chapter/controllers/chapter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/database/app_database.dart';

class HadithController extends GetxController {
  // Observable list of sections
  final _sections = <Section>[].obs;
  List<Section> get sections => _sections;

  // Observable list of hadiths
  final _hadiths = <Hadith>[].obs;
  List<Hadith> get hadiths => _hadiths;

  // Observable variables to track the selected chapterId and sectionId
  final chapterId = 1.obs;
  final sectionId = 0.obs;

  @override
  void onInit() {
    super.onInit();

    // Watch changes in chapterId and trigger fetchSectionsByBookIdAndChapterId accordingly
    ever(chapterId, (int id) {
      fetchSectionsByBookIdAndChapterId(id);
    });

    // Print the sections (for debugging purposes)
    print(_sections);
  }

  // Asynchronously fetch sections based on the provided chapterId
  void fetchSectionsByBookIdAndChapterId(int chapterId) async {
    try {
      // Retrieve sections from the database based on chapterId and the associated bookId from ChapterController
      final sections =
          await AppDatabase.instance.getSectionsByBookIdAndChapterId(
        chapterId,
        Get.find<ChapterController>().bookId.value,
      );

      // Assign sections to the observable list
      _sections.assignAll(sections);
    } catch (e) {
      // Handle and print an error if fetching sections fails
      debugPrint('Error fetching sections: $e');
    }
  }

  // Asynchronously fetch hadiths based on the provided bookId, chapterId, and sectionId
  Future<List<Hadith>> fetchHadithsByBookChapterAndSectionId(
      int bookId, int chapterId, int sectionId) async {
    try {
      // Retrieve hadiths from the database based on the provided parameters
      final hadiths = await AppDatabase.instance
          .getHadithsByBookChapterAndSectionId(bookId, chapterId, sectionId);

      // Assign hadiths to the observable list
      _hadiths.assignAll(hadiths);
      return _hadiths;
    } catch (e) {
      // Handle and print an error if fetching hadiths fails
      debugPrint('Error fetching hadiths: $e');
    }
    return [];
  }
}
