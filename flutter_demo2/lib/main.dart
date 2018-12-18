import 'package:flutter/material.dart';

/////////////////-------------页面跳转返回参数--------------///////////////////////

void main() {
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

/////////////////-------------列表进入详情页带参数--------------///////////////////////

// class Product {
//   final String title;
//   final String description;

//   Product(this.title, this.description);
// }

// void main() {
//   runApp(
//     MaterialApp(
//         title: '导航参数传递',
//         home: ProductList(
//             products:
//                 List.generate(200, (i) => Product('000 :商品 $i', '商品详情 $i')))),
//   );
// }

// class ProductList extends StatelessWidget {
//   final List<Product> products;
//   ProductList({Key key, @required this.products}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('商品列表'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].title),
//             subtitle: Text(products[index].description),
//             leading: new Icon(Icons.account_box, color: Colors.lightBlue),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           ProductDetail(product: products[index])));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProductDetail extends StatelessWidget {
//   final Product product;
//   ProductDetail({Key key, @required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//       ),
//       body: Center(
//         child: Text('${product.description}'),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////

// void main(){
//   runApp(MaterialApp(
//       title:'导航演示1',
//       home:new FirstScreen()
//   ));
// }
// class FirstScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
//         appBar: AppBar(title:Text('导航页面')),
//         body:Center(
//             child:RaisedButton(
//               child:Text('查看商品详情页面'),
//               onPressed: (){
//                 Navigator.push(context,new  MaterialPageRoute(
//                     builder:(context) =>new SecondScreen())
//                 );
//               },
//             )
//         )
//     );
//   }
// }
// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//         appBar:AppBar(title:Text('商品详情页')),
//         body:Center(child:RaisedButton(
//             child:RaisedButton(
//               child:Text('返回上一页'),
//               onPressed: (){
//                 Navigator.pop(context);
//               },
//             )
//         ))
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////

//void main() => runApp(MyApp());
//
////  布局
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//    return   MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          appBar:new AppBar(
//            title:new Text('title'),
//          ),
//          body:Text('sssssssss')
//      ),
//    );
//  }
//}

// 卡片布局
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//
//    var card = new Card(
//      child: Column(
//        children: <Widget>[
//          ListTile(
//            title: Text('杭州市西湖区',style: TextStyle(fontWeight: FontWeight.w500),),
//            subtitle: Text('刘强东:12132435486587'),
//            leading: new Icon(Icons.account_box,color: Colors.lightBlue),
//          ),
//          new Divider(),
//          ListTile(
//            title: Text('广东省广州市',style: TextStyle(fontWeight: FontWeight.w500),),
//            subtitle: Text('马化腾:12132435486587'),
//            leading: new Icon(Icons.account_box,color: Colors.lightBlue),
//          ),
//          new Divider(),
//          ListTile(
//            title: Text('上海市新城区',style: TextStyle(fontWeight: FontWeight.w500),),
//            subtitle: Text('码云:12132547'),
//            leading: new Icon(Icons.account_box,color: Colors.lightBlue),
//          ),
//          new Divider(),
//        ],
//      ),
//    );
//
//    return   MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          appBar:new AppBar(
//            title:new Text('卡片布局'),
//          ),
//          body:card
//      ),
//    );
//  }
//}

//  层叠布局
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//
//    var stack = new Stack(
//      alignment: const FractionalOffset(0.5, 0.8),
//      children: <Widget>[
//        new CircleAvatar(
//          backgroundImage: new NetworkImage('http://cc.cocimg.com/api/uploads/181218/4eb05d4922763aba6edaa2c666fdc459.jpg'),
//          radius: 100.0,
//        ),
//        new Container(
//          decoration: new BoxDecoration(
//            color: Colors.lightBlue,
//          ),
//          padding: EdgeInsets.all(5.0),
//          child: Text('test flutter'),
//        )
//      ],
//    );
//
//
//    return   MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          appBar:new AppBar(
//            title:new Text('层叠布局'),
//          ),
//          body:Center(
//             child: stack
//          )
//      ),
//    );
//  }
//}

////  水平布局
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//    return   MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          appBar:new AppBar(
//            title:new Text('水平方向布局'),
//          ),
//          body:Row(
//            children: <Widget>[
//              new RaisedButton(onPressed: (){},
//                color: Colors.redAccent,
//                child: new Text('red btn'),),
//              Expanded(child: new RaisedButton(onPressed: (){},
//                color: Colors.orange,
//                child: new Text('orange btn'),),),
//              Expanded(child: new RaisedButton(onPressed: (){},
//                color: Colors.blue,
//                child: new Text('blue btn'),),),
//
//            ],
//          )
//      ),
//    );
//  }
//}

//  //垂直布局
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//    return   MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          appBar:new AppBar(
//            title:new Text('垂直方向布局'),
//          ),
//          body:Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Center(child:Text('I am JSPang')),
//              Center(child:Text('my website is jspang.com')),
//              Center(child:Text('I love coding'))
//            ],
//          )
//      ),
//    );
//  }
//}

//输入框
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'ListView widget',
//      home: Scaffold(
//          appBar: new AppBar(
//            title: new Text('垂直方向布局'),
//          ),
//          body: Column(
//            children: <Widget>[
//              TextField(
//                autofocus: true,
//                decoration: InputDecoration(
//                    labelText: "用户名",
//                    hintText: "用户名或邮箱",
//                    prefixIcon: Icon(Icons.person)),
//              ),
//              TextField(
//                decoration: InputDecoration(
//                    labelText: "密码",
//                    hintText: "您的登录密码",
//                    prefixIcon: Icon(Icons.lock)),
//                obscureText: true,
//              ),
//              TextField(
//                decoration: InputDecoration(
//                    hintText: "测试测试",
//                    fillColor: Colors.green,
//                    border: InputBorder.none,
//                  hintStyle: TextStyle(
//                    color: Colors.blue
//                  )
//
//                ),
//                style: TextStyle(
//                  fontSize: 40.0,
//                  color: Colors.orange,
//
//
//                ),
//
//                maxLines: 3,
//                keyboardType: TextInputType.emailAddress,
//                cursorWidth: 10.0,
//              ),
//            ],
//          )),
//    );
//  }
//}
