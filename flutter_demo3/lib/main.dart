import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
/////////////////-------------页面跳转返回参数--------------///////////////////////

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(
    MaterialApp(title: '导航参数传递', home: OnePage()),
  );
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('按钮按钮'),
      onPressed: () {
        _navigateToTwoPage(context);
      },
    );
  }

  _navigateToTwoPage(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => xjj()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class xjj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿1'),
              onPressed: () {
                Navigator.pop(context, '123');
              },
            ),
            RaisedButton(
              child: Text('小鳗鱼1'),
              onPressed: () {
                Navigator.pop(context, '785453');
              },
            ),
            RaisedButton(
              child: Text('大二与1'),
              onPressed: () {
                Navigator.pop(context, '4444444');
              },
            )
          ],
        ),
      ),
    );
  }
}
