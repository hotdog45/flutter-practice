import 'package:flutter/material.dart';

class Each extends StatefulWidget {
  String _title;
  Each(this._title);

  _EachState createState() => _EachState();
}

class _EachState extends State<Each> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
