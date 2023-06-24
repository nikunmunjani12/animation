import 'package:flutter/material.dart';

class TweenAnimationDemo extends StatefulWidget {
  const TweenAnimationDemo({Key? key}) : super(key: key);

  @override
  State<TweenAnimationDemo> createState() => _TweenAnimationDemoState();
}

class _TweenAnimationDemoState extends State<TweenAnimationDemo> {
  bool home = false;
  Color colorvalue = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder(
              curve: Curves.bounceIn,
              onEnd: () {
                setState(() {});
                if (colorvalue == Colors.red) {
                  colorvalue = Colors.green;
                } else {
                  colorvalue = Colors.red;
                }
              },
              duration: Duration(seconds: 1),
              tween: ColorTween(begin: Colors.red, end: colorvalue),
              builder: (BuildContext context, Object? value, Widget? child) {
                return Container(
                  height: 200,
                  width: 200,
                  color: colorvalue,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
