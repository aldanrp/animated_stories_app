import 'package:animated_stories_app/constants/color_materials.dart';
import 'package:animated_stories_app/data/model/bookmodel.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail-screen';

  final Bookdata bookdataModel;
  const DetailPage({Key? key, required this.bookdataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2d3447),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        height: 50,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: TextButton(
          onPressed: () {
            /*Bookadd.map((data) => {
                  if (data == bookdataModel)
                    {print("data sudah ada")}
                  else
                    {Bookadd.add(bookdataModel)}
                });*/
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibraryScreen()),
            );*/
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            minimumSize: Size.fromWidth(MediaQuery.of(context).size.width),
            primary: kBlack,
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          child: const Text(
            'Add to Library',
            style: TextStyle(
              fontSize: 20,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: kWhite,
                expandedHeight: MediaQuery.of(context).size.height * 0.55,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        kBlack.withOpacity(0.8),
                        BlendMode.darken,
                      ),
                      image: AssetImage(bookdataModel.image),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 172,
                          height: 225,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(bookdataModel.image),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(right: 15, bottom: 5),
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 2, color: kLightGray)),
                          ),
                          child: Text(
                            bookdataModel.title,
                            style: const TextStyle(
                                fontSize: 27,
                                color: kLightGray3,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          bookdataModel.author,
                          style: const TextStyle(
                              fontSize: 20,
                              color: kLightGray,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(bookdataModel.color),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                bookdataModel.price,
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color(bookdataModel.color),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Description :",
                          style: TextStyle(
                              fontSize: 26,
                              color: kLightGray3,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      "       " + bookdataModel.description,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: kLightGray,
                        letterSpacing: 1.5,
                        height: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
