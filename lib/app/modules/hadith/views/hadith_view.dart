import '../../chapter/controllers/chapter_controller.dart';
import '../../../widgets/polygon_shape.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../contants.dart';
import '../../../utils/utils.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/hadith_controller.dart';
import 'widget/detail_bottom_sheet.dart';

class HadithView extends GetView<HadithController> {
  HadithView({Key? key}) : super(key: key);
  final HadithController hadithController = Get.find<HadithController>();
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String title = arguments['title'];

    return Obx(
      () => Scaffold(
        backgroundColor: appColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: NestedScrollView(
            physics: const NeverScrollableScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  floating: true,
                  snap: true,
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
                        Get.find<HomeController>().getBookName(
                          Get.find<ChapterController>().bookId.value,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  expandedHeight: 80,
                )
              ];
            },
            body: Container(
              decoration: BoxDecoration(
                  color: scaffoldBg,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: hadithController.sections.length,
                itemBuilder: (context, index) {
                  final section = hadithController.sections[index];
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        margin:
                            const EdgeInsets.only(top: 12, left: 12, right: 12),
                        decoration: BoxDecoration(
                          color: tileColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${section.number} ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: appColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: section.number == section.title
                                        ? ''
                                        : '${section.title}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: titleColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            section.preface != null &&
                                    section.preface!.isNotEmpty
                                ? const Divider()
                                : const SizedBox(),
                            section.preface != null &&
                                    section.preface!.isNotEmpty
                                ? Text(
                                    section.preface ?? '',
                                    style: TextStyle(
                                        color: subTitleColor.withOpacity(.6)),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                      FutureBuilder(
                          future: hadithController
                              .fetchHadithsByBookChapterAndSectionId(
                            Get.find<ChapterController>().bookId.value,
                            hadithController.chapterId.value,
                            section.sectionId!,
                          ),
                          builder: (context, snapshot) {
                            print('hadis snapshot: ${snapshot.data}');
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const SizedBox();
                            } else if (snapshot.hasError) {
                              return Text(snapshot.error.toString());
                            } else {
                              final hadiths = snapshot.data;

                              return hadiths == null
                                  ? const SizedBox()
                                  : ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: hadiths.length,
                                      itemBuilder: (context, i) {
                                        // If hadithId is null, showing nothing
                                        return hadiths[i].hadithId == null
                                            ? const SizedBox()
                                            : Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                        vertical: 20),
                                                margin: const EdgeInsets.only(
                                                    top: 12,
                                                    left: 12,
                                                    right: 12),
                                                decoration: BoxDecoration(
                                                  color: tileColor,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        PolygonShape(
                                                          text: Get.find<
                                                                  HomeController>()
                                                              .getBookAbvr(
                                                                  hadiths[i]
                                                                      .bookId!),
                                                          color:
                                                              HexColor.fromHex(
                                                            Get.find<
                                                                    HomeController>()
                                                                .getBookColorCode(
                                                                    hadiths[i]
                                                                        .bookId!),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text.rich(
                                                              TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'হাদিস: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color:
                                                                          titleColor,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: convertToBengali(
                                                                        hadiths[i]
                                                                            .hadithId!),
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color:
                                                                          appColor,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              '${hadiths[i].bookName}',
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    titleColor,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Spacer(),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal: 6,
                                                                  vertical: 4),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: HexColor
                                                                .fromHex(hadiths[
                                                                        i]
                                                                    .gradeColor!),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                          ),
                                                          child: Text(
                                                            '${hadiths[i].grade}',
                                                            style: TextStyle(
                                                              color: tileColor,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 12,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            Get.bottomSheet(
                                                              const DetailBottomSheet(),
                                                            );
                                                          },
                                                          child: Image.asset(
                                                            'assets/icons/more.png',
                                                            height: 25,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 40,
                                                    ),
                                                    Text(
                                                      '${hadiths[i].ar}',
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      '${hadiths[i].narrator} থেকে বর্নিত',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: appColor,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      '${hadiths[i].bn}',
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    hadiths[i].note != null &&
                                                            hadiths[i]
                                                                .note!
                                                                .isNotEmpty
                                                        ? Column(
                                                            children: [
                                                              const Divider(),
                                                              Text(
                                                                'ফুটনোটঃ\n${hadiths[i].note}',
                                                                style: TextStyle(
                                                                    color: subTitleColor
                                                                        .withOpacity(
                                                                            .6)),
                                                              ),
                                                            ],
                                                          )
                                                        : const SizedBox(),
                                                  ],
                                                ),
                                              );
                                      });
                            }
                          }),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
