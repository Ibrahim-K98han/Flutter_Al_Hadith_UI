import 'package:al_hadith_app/modules/chapter/models/hadit_chapter_model.dart';
import 'package:al_hadith_app/modules/home/models/hadit_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChapterController extends GetxController {
  final textEditingController = TextEditingController();
  var hadit = <HaditChapterModel>[].obs;
  var filteredHadit = <HaditChapterModel>[].obs;

  void search(String keyword) {
    if (keyword.isEmpty) {
      filteredHadit.assignAll(hadit);
    } else {
      filteredHadit.assignAll(
        hadit
            .where((hadit) =>
                hadit.haditName.toLowerCase().contains(keyword.toLowerCase()))
            .toList(),
      );
    }
  }

  @override
  void onInit() {
    hadit.assignAll([
      HaditChapterModel(
        id: '২',
        haditName: 'ঈমান',
        range: '৮ - ৫৮',
      ),
      HaditChapterModel(
        id: '৩',
        haditName: 'ইলম',
        range: '৫৯ - ১৩৪',
      ),
      HaditChapterModel(
        id: '৪',
        haditName: 'ওজু',
        range: '১৩৫ - ২৪৭',
      ),
      HaditChapterModel(
        id: '৫',
        haditName: 'গোসল',
        range: '২৪৮ - ২৯৩',
      ),
      HaditChapterModel(
        id: '৬',
        haditName: 'হায়েজ',
        range: '২৯৪ - ৩৩৩',
      ),
      HaditChapterModel(
        id: '৭',
        haditName: 'তায়াম্মুম',
        range: '৩৩৪ - ৩৪৮',
      ),
      HaditChapterModel(
        id: '৮',
        haditName: 'সালাত',
        range: '৩৪৯ - ৫২০',
      ),
      HaditChapterModel(
        id: '৯',
        haditName: 'সালাতের ওয়াক্তসমূহ',
        range: '৫২১ - ৬০২',
      ),
      HaditChapterModel(
        id: '১০',
        haditName: 'আযান',
        range: '৬০৩ - ৮৭৫',
      )
    ]);
    filteredHadit.assignAll(hadit);
    super.onInit();
  }
}
