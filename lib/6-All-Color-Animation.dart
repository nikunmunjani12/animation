import 'dart:math';

import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  Color colorvalue = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder(
              onEnd: () {
                setState(() {});
                final random = Random();
                if (colorvalue == colorvalue) {
                  colorvalue = Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1,
                  );
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
