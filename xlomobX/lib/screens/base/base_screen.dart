import 'package:flutter/material.dart';
import 'package:xlomobX/screens/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
