import '../../hadith/controllers/hadith_controller.dart';
import '../../../utils/utils.dart';
import '../../../widgets/polygon_shape.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../contants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/chapter_controller.dart';

class ChapterView extends GetView<ChapterController> {
  ChapterView({Key? key}) : super(key: key);

  final ChapterController chapterController = Get.find<ChapterController>();
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String title = arguments['title'];
    final String subtitle = arguments['subtitle'];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Obx(
        () => Scaffold(
          backgroundColor: appColor,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.back();
              },
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: scaffoldBg,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 12,
                    right: 12,
                    bottom: 10,
                  ),
                  child: TextField(
                    onChanged: (query) {
                      chapterController.filterChapters(query);
                    },
                    decoration: InputDecoration(
                      hintText: 'অধ্যায় সার্চ করুন',
                      filled: true,
                      fillColor: tileColor,
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: chapterController.chapters.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final chapter = chapterController.chapters[index];
                      return InkWell(
                        onTap: () {
                          Get.put(HadithController()).chapterId.value =
                              chapter.chapterId!;
                          Get.toNamed(Routes.HADITH, arguments: {
                            'title': chapter.title!,
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 20),
                          margin: const EdgeInsets.only(
                              top: 12, left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: tileColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              PolygonShape(
                                text: convertToBengali(chapter.chapterId ?? 0),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chapter.title ?? '',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: titleColor,
                                        fontFamily: 'Kalpurush',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'হাদিসের রেঞ্জঃ ${chapter.hadisRange}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: titleColor.withOpacity(.6),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
