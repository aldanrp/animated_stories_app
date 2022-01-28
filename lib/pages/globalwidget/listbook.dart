import 'package:animated_stories_app/constants/color_materials.dart';
import 'package:animated_stories_app/data/model/bookmodel.dart';
import 'package:flutter/material.dart';

class ListBook extends StatelessWidget {
  final Bookdata bookdatadetail;
  const ListBook({Key? key, required this.bookdatadetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List genre = bookdatadetail.genre;
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 10),
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            margin: const EdgeInsets.only(top: 5, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(bookdatadetail.image),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  bookdatadetail.title,
                  style: const TextStyle(
                    fontSize: 23,
                    color: kWhite,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  bookdatadetail.author,
                  style: const TextStyle(
                    color: kLightGray,
                    fontSize: 17,
                  ),
                ),
                Row(
                  children: genre.map((data) {
                    dynamic warna;
                    dynamic fontcolor;
                    if (data == 'Adventure') {
                      warna = kDarkGreen;
                      fontcolor = kLightGreen;
                    } else if (data == 'Drama') {
                      warna = kDarkblue;
                      fontcolor = kLighBlue;
                    } else {
                      warna = kDarkred;
                      fontcolor = kLightred;
                    }
                    return Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(top: 20, right: 2),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: warna),
                      child: Text(
                        " " + data,
                        style: TextStyle(
                          fontSize: 15,
                          color: fontcolor,
                        ),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
