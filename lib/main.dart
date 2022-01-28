import 'package:animated_stories_app/constants/navigation.dart';
import 'package:animated_stories_app/data/model/bookmodel.dart';
import 'package:animated_stories_app/pages/details_page.dart';
import 'package:animated_stories_app/pages/favortite_page.dart';
import 'package:animated_stories_app/pages/home_page.dart';
import 'package:animated_stories_app/pages/search_page.dart';
import 'package:animated_stories_app/pages/setting_page.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF2d3447),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      routes: {
        DetailPage.routeName: (context) => DetailPage(
              bookdataModel:
                  ModalRoute.of(context)?.settings.arguments as Bookdata,
            ),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final _advancedDrawerController = AdvancedDrawerController();

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _getWidget() {
    if (currentIndex == 1) {
      return const SearchPage();
    } else if (currentIndex == 2) {
      return const FavotirtePage();
    } else if (currentIndex == 3) {
      return const SettingPage();
    }
    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: const Color(0xFF2d3447).withOpacity(0.5),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.menu_rounded,
                      size: 24,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color(0xFF2d3447),
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
            title: const Text(
              "Stories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: _getWidget()),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    // clipBehavior: Clip.antiAlias,
                    // decoration: const BoxDecoration(
                    //   color: Colors.black26,
                    //   shape: BoxShape.circle,
                    // ),
                    child: Container()),
                ListTile(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  leading: const Icon(Icons.search),
                  title: const Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  leading: const Icon(Icons.favorite),
                  title: const Text(
                    'Favourites',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
