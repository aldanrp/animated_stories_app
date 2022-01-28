import 'package:animated_stories_app/constants/color_materials.dart';
import 'package:animated_stories_app/constants/navigation.dart';
import 'package:animated_stories_app/data/model/bookmodel.dart';
import 'package:animated_stories_app/pages/details_page.dart';
import 'package:animated_stories_app/pages/globalwidget/listbook.dart';
import 'package:animated_stories_app/pages/searchwidget/searchwidget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late List<Bookdata> books;
  late List<Bookdata> searchbooks;
  String query = '';

  @override
  void initState() {
    super.initState();

    searchbooks = books = bookdata;
    for (var i = 0; i < searchbooks.length; i++) {
      print(searchbooks[i].title);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFF2d3447),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: buildSearch(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(bookdata[index].title);
                      Navigation.intentWithData(
                          DetailPage.routeName, bookdata[index]);
                    },
                    child: ListBook(
                      bookdatadetail: bookdata[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Title or Author Name',
        onChanged: searchBook,
      );

  void searchBook(String query) {
    final books = searchbooks.where((book) {
      final titleLower = book.title.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.books = books;
    });
  }
}
