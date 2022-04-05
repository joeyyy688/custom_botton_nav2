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
  MenuScreenState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: const [
            // SizedBox(
            //   height: double.infinity,
            //   width: double.infinity,
            // ),
            Scaffold(
              bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TabBar(
                  tabs: <Widget>[
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
                  labelColor: Color.fromARGB(255, 48, 42, 60),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 48, 42, 60),
                      width: 3.0,
                    ),
                    insets: EdgeInsets.only(
                      bottom: 43,
                    ),
                  ),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              body: TabBarView(
                children: [
                  ScreenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
