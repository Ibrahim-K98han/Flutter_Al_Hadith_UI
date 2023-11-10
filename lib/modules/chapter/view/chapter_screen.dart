import 'package:al_hadith_app/modules/chapter/controller/chapter_conteroller.dart';
import 'package:al_hadith_app/modules/home/models/hadit_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/widgets/container_widget.dart';
import '../widgets/chapter_list_widget.dart';

class ChapterScreen extends StatelessWidget {
  final ChapterController chapterController = Get.put(ChapterController());
  @override
  Widget build(BuildContext context) {
    //final item = Get.arguments as HaditModel;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        backgroundColor: const Color(0xff0E8486),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   item.haditBookName,
            //   style: const TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            // Text(
            //   item.haditCount,
            //   style: const TextStyle(
            //     fontSize: 12,
            //     fontWeight: FontWeight.w500,
            //   ),
            // )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff0E8486),
                      Color(0xff2BB997),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    //height: MediaQuery.of(context).size.height / 1.1,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                chapterController.search(value);
                              },
                              decoration: const InputDecoration(
                                hintText: 'অধ্যায় সার্চ করুন',
                                suffixIcon: Icon(Icons.search),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Obx(
                            () => SizedBox(
                              height: MediaQuery.of(context).size.height / 1.5,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount:
                                    chapterController.filteredHadit.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: ChapterListWidget(
                                      id: chapterController
                                          .filteredHadit[index].id,
                                      haditName: chapterController
                                          .filteredHadit[index].haditName,
                                      range:
                                          'হাদিসের রেন্জ: ${chapterController.filteredHadit[index].range}',
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
