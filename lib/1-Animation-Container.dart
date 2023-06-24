import 'package:flutter/material.dart';

class AnimationContainerDemo extends StatefulWidget {
  const AnimationContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimationContainerDemo> createState() => _AnimationContainerDemoState();
}

class _AnimationContainerDemoState extends State<AnimationContainerDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  double height = 200;
  double width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          height = height == 100 ? 200 : 100;
          width = width == 100 ? 200 : 100;
        },
      ),
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.red,
        ),
      ),
    );
  }
}
