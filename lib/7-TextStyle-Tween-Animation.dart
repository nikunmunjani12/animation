import 'package:flutter/material.dart';

class TextStyleAnimation extends StatefulWidget {
  const TextStyleAnimation({Key? key}) : super(key: key);

  @override
  State<TextStyleAnimation> createState() => _TextStyleAnimationState();
}

class _TextStyleAnimationState extends State<TextStyleAnimation> {
  Color one = Colors.black;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {});
            if (one == Colors.purpleAccent) {
              one = Colors.black;
            } else
              one = Colors.purpleAccent;
          },
          tween: TextStyleTween(
              begin: TextStyle(color: Colors.purpleAccent),
              end: TextStyle(color: one)),
          duration: Duration(seconds: 1),
          builder: (BuildContext context, Object? value, Widget? child) {
            return Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: one,
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  shadows: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5, 5),
                        blurRadius: 5),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
