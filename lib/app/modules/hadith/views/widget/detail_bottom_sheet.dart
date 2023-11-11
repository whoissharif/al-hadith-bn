import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../contants.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

final List<String> sheetIconList = [
  'assets/icons/paper-plane.png',
  'assets/icons/bookmark.png',
  'assets/icons/copy.png',
  'assets/icons/copy.png',
  'assets/icons/copy.png',
  'assets/icons/add-hifz.png',
  'assets/icons/add-hifz.png',
  'assets/icons/share.png',
  'assets/icons/report.png',
];

final List<String> sheetOptionList = [
  'Go To Main Hadith',
  'Add to Collection',
  'Bangla Copy',
  'English Copy',
  'Arabic Copy',
  'Add Hifz',
  'Add Note',
  'Share',
  'Report'
];

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'More Option',
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.close,
                  color: subTitleColor.withOpacity(.6),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: sheetIconList
                .mapIndexed(
                  (i, e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      children: [
                        Image.asset(
                          e,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          sheetOptionList[i],
                          style: TextStyle(
                            fontSize: 14,
                            color: subTitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
