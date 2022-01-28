import 'package:animated_stories_app/constants/color_materials.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Lottie.asset('assets/images/underconstruction-1.json'),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Oops Page not found ",
                  style: TextStyle(
                    fontSize: 25,
                    color: kWhite,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "We a sorry, this page under construction ",
                  style: TextStyle(
                    fontSize: 15,
                    color: kWhite,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
