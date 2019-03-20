import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              //渐隐渐现
              // return FadeTransition(
              //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: child,
              // );

              //缩放
              // return ScaleTransition(
              //   child: child,
              //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              // );

              //旋转 缩放
              // return RotationTransition(
              //     turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //         parent: animation1, curve: Curves.fastOutSlowIn)),
              //     child: ScaleTransition(
              //       child: child,
              //       scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //           parent: animation1, curve: Curves.fastOutSlowIn)),
              //     ));

              //左右滑动路由
              return SlideTransition(
                child: child,
                position: Tween<Offset>(
                        begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.decelerate)),
              );
            });
}
