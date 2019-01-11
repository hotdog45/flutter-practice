import 'package:flutter/material.dart';
import 'eachView.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView..add(Each("home"))..add(Each("test"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Each("new page");
          }));
        },
        tooltip: 'test',
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.airplay),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
