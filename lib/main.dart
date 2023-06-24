import 'package:animation/3-Color-tween_animation.dart';
import 'package:flutter/material.dart';
import '1-Animation-Container.dart';
import '2-Animation-Controller.dart';
import '4-BorderRadiusTween-Animation.dart';
import '5-BorderTween-Animation.dart';
import '6-All-Color-Animation.dart';
import '7-TextStyle-Tween-Animation.dart';
import 'Demo.dart';
import 'Lottei-Package-Animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TweenAnimation(),
    );
  }
}
