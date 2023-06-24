import 'package:flutter/material.dart';

class BoederAnimation extends StatefulWidget {
  const BoederAnimation({Key? key}) : super(key: key);

  @override
  State<BoederAnimation> createState() => _BoederAnimationState();
}

class _BoederAnimationState extends State<BoederAnimation> {
  Color one = Colors.black;
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
          tween: BorderTween(
            begin: Border.all(color: Colors.purpleAccent),
            end: Border.all(color: one),
          ),
          duration: Duration(seconds: 1),
          builder: (BuildContext context, Object? value, Widget? child) {
            return Container(
              height: 200,
              width: 200,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.tealAccent,
                border: Border.all(color: one, width: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
