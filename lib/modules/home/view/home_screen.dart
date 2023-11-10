import 'package:al_hadith_app/modules/chapter/view/chapter_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../widgets/container_widget.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        backgroundColor: const Color(0xff0E8486),
        elevation: 0,
        title: const Text('আল হাদিস'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.8,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff0E8486),
                      Color(0xff2BB997),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Obx(
                              () => CarouselSlider(
                                items: homeController.items.map((item) {
                                  return Builder(
                                    builder: (context) {
                                      return Text(
                                        textAlign: TextAlign.center,
                                        item,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          letterSpacing: 1,
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                                options: CarouselOptions(
                                  height: 150,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ContainerWidget(
                                img: Image.asset(
                                  'assets/images/last.png',
                                  width: 30,
                                  height: 30,
                                ),
                                title: 'সর্বশেষ',
                              ),
                              ContainerWidget(
                                img: Image.asset(
                                  'assets/images/go_to.png',
                                  width: 30,
                                  height: 30,
                                ),
                                title: 'হাদিসে যান',
                              ),
                              ContainerWidget(
                                img: Image.asset(
                                  'assets/images/app.png',
                                  width: 30,
                                  height: 30,
                                ),
                                title: 'অ্যাপস',
                              ),
                              ContainerWidget(
                                img: Image.asset(
                                  'assets/images/sadaqa.png',
                                  width: 30,
                                  height: 30,
                                ),
                                title: 'সদাকা',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'সব হাদিসের বই',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: homeController.hadit.length,
              itemBuilder: (context, index) {
                final item = homeController.hadit[index];
                return InkWell(
                  onTap: () {
                    Get.to(ChapterScreen(), arguments: item);
                  },
                  child: AllHaditBooksListWidget(
                    bookName: item.haditBookName,
                    bookWriter: item.haditBookWriter,
                    bookCount: item.haditCount,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class AllHaditBooksListWidget extends StatelessWidget {
  const AllHaditBooksListWidget({
    super.key,
    required this.bookName,
    required this.bookWriter,
    required this.bookCount,
  });
  final String bookName;
  final String bookWriter;
  final String bookCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/green_polygon.png',
                        width: 40,
                        height: 40,
                      ),
                      const Positioned(
                        child: Text(
                          'B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        bookWriter,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        Text(
                          bookCount,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'হাদিস',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
