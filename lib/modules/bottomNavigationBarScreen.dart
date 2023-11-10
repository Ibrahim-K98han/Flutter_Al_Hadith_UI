import 'package:al_hadith_app/modules/chapter/view/chapter_screen.dart';
import 'package:al_hadith_app/modules/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'note/view/note_screen.dart';
import 'profile/view/profile_screen.dart';
import 'save/view/save_screen.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  final selectedTabIndex = 0.obs;

  final pages = [
    HomeScreen(),
    ChapterScreen(),
    NoteScreen(),
    SaveScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[selectedTabIndex.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
              currentIndex: selectedTabIndex.value,
              onTap: (value) {
                selectedTabIndex.value = value;
              },
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/home.png',
                      width: 24,
                      height: 24,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/book.png',
                      width: 24,
                      height: 24,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/note.png',
                      width: 24,
                      height: 24,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/save.png',
                      width: 24,
                      height: 24,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/user.png',
                    width: 24,
                    height: 24,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
