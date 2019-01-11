import 'package:flutter/material.dart';
import 'custome_router.dart';

class FristPage extends StatefulWidget {
  _FristPageState createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "FristPage",
          style: TextStyle(fontSize: 36.0),
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64,
          ),
          onPressed: () {
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(
          "SecondPage",
          style: TextStyle(fontSize: 36.0),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
