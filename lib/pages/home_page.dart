import 'package:animated_stories_app/constants/color_materials.dart';
import 'package:animated_stories_app/constants/navigation.dart';
import 'package:animated_stories_app/data/model/bookmodel.dart';
import 'package:animated_stories_app/pages/details_page.dart';
import 'package:animated_stories_app/pages/globalwidget/listbook.dart';
import 'package:animated_stories_app/pages/homewidget/cardscroll.dart';
import 'package:flutter/material.dart';

class CustomIcons {
  static const IconData menu = IconData(0xe900, fontFamily: "CustomIcons");
  static const IconData option = IconData(0xe902, fontFamily: "CustomIcons");
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = bookdata.length - 1.0;
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: bookdata.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2d3447),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Trending",
                      style: TextStyle(
                          fontFamily: "Calibre-Semibold",
                          fontSize: 46.0,
                          color: Colors.white,
                          letterSpacing: 1.0),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Center(
                          child: Text(
                            "Animated",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "25+ Stories",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  CardScrollWidget(
                    currentPage: currentPage,
                  ),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: bookdata.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              print(bookdata[index].title);
                              Navigation.intentWithData(
                                  DetailPage.routeName, bookdata[index]);
                            },
                            child: Container(
                              color: kWhite.withOpacity(0),
                            ));
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Favourite",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: "Calibre-Semibold"),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz_outlined,
                          size: 40, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        // color: Color(0xFFff6e6e)
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Center(
                          child: Text(
                            "Latest",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "9+ Stories",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: bookdata.length,
                itemBuilder: (context, index) {
                  List genre = bookdata[index].genre;
                  return GestureDetector(
                      onTap: () {
                        print(bookdata[index].title);
                        Navigation.intentWithData(
                            DetailPage.routeName, bookdata[index]);
                      },
                      child: ListBook(
                        bookdatadetail: bookdata[index],
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
