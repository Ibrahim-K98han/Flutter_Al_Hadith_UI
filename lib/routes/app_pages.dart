import 'package:al_hadith_app/modules/chapter/view/chapter_screen.dart';
import 'package:al_hadith_app/modules/home/view/home_screen.dart';
import 'package:al_hadith_app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../modules/bottomNavigationBarScreen.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.bottomNavigatorScreen;
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.chapterScreen,
      page: () => ChapterScreen(),
    ),
    GetPage(
      name: Routes.bottomNavigatorScreen,
      page: () => BottomNavigationBarScreen(),
    ),
  ];
}
