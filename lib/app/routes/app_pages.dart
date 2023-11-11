import 'package:get/get.dart';

import '../modules/chapter/bindings/chapter_binding.dart';
import '../modules/chapter/views/chapter_view.dart';
import '../modules/hadith/bindings/hadith_binding.dart';
import '../modules/hadith/views/hadith_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAPTER,
      page: () => ChapterView(),
      binding: ChapterBinding(),
    ),
    GetPage(
      name: _Paths.HADITH,
      page: () => HadithView(),
      binding: HadithBinding(),
    ),
  ];
}
