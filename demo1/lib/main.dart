import 'package:flutter/material.dart';
import 'BottomNavigationWidget.dart';

void main() =>runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter bottomNavBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}


