import 'package:flutter/material.dart';
import 'pages/airplay.dart';
import 'pages/email.dart';
import 'pages/home.dart';
import 'pages/pages.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pages = List();

  @override
  void initState() {
    pages..add(Home())..add(Pages())..add(Email())..add(Airplay());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text("Home",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomNavigationColor,
              ),
              title: Text("email",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomNavigationColor,
              ),
              title: Text("pages",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomNavigationColor,
              ),
              title: Text("airplay",
                  style: TextStyle(color: _bottomNavigationColor)))
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
