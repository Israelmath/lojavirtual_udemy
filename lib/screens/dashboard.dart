import 'package:flutter/material.dart';
import 'package:lojavirtual/models/custom_drawer.dart';
import 'package:lojavirtual/screens/home_tab.dart';

class Dashboard extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
      ],
    );
  }
}
