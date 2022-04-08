import 'package:custom_botton_nav2/screens/screenFour.dart';
import 'package:custom_botton_nav2/screens/screenOne.dart';
import 'package:custom_botton_nav2/screens/screenThree.dart';
import 'package:custom_botton_nav2/screens/screenTwo.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);
  @override
  MenuScreenState createState() => MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> {
  late bool isTabSelected = false;
  late int selectedIndex;

  @override
  void initState() {
    // implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: !isTabSelected
            ? const ScreenFour()
            : const TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ScreenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                  ScreenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                ],
              ),
        bottomNavigationBar: SafeArea(
          child: TabBar(
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.pages),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.pages),
              ),
            ],
            onTap: (index) {
              setState(() {
                isTabSelected = true;
              });
            },
            labelColor: isTabSelected
                ? const Color.fromARGB(255, 48, 42, 60)
                : Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: isTabSelected
                    ? const Color.fromARGB(255, 48, 42, 60)
                    : Colors.transparent,
                width: 3.0,
              ),
              insets: const EdgeInsets.only(
                bottom: 43,
              ),
            ),
            unselectedLabelColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
