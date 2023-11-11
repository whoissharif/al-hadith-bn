import '../../chapter/controllers/chapter_controller.dart';
import '../../../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../contants.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/polygon_shape.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        title: const Text('হাদিস গ্রন্থসমূহ'),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: controller.books.length,
              itemBuilder: (context, index) {
                final book = controller.books[index];
                return InkWell(
                  onTap: () {
                    Get.put(ChapterController()).bookId.value = book.id!;
                    Get.toNamed(
                      Routes.CHAPTER,
                      arguments: {
                        'title': book.title!,
                        'subtitle':
                            '${convertToBengali(book.numberOfHadis!)} টি হাদিস',
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        PolygonShape(
                          text: book.abvrCode!,
                          color: HexColor.fromHex(book.colorCode!),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              book.title!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: titleColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Text(
                            '${convertToBengali(book.numberOfHadis!)} টি হাদিস',
                            style: TextStyle(
                              fontSize: 14,
                              color: subTitleColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
