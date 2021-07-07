import 'package:bankapp/Brand/Extensions.dart';
import 'package:bankapp/Brand/Theme.dart';
import 'package:bankapp/views/HomeView.dart';
import 'package:bankapp/views/ProductsView.dart';
import 'package:flutter/material.dart';

import 'PaymentView.dart';
import 'SettingsView.dart';

class MainView extends StatefulWidget {
  static const routeName = "/Main";
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    PaymentView(),
    ProductsView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.mail), label: "Payments"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
