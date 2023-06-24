import 'package:flutter/material.dart';

class Borderreduis extends StatefulWidget {
  const Borderreduis({Key? key}) : super(key: key);

  @override
  State<Borderreduis> createState() => _BorderreduisState();
}

class _BorderreduisState extends State<Borderreduis> {
  double radius = 100;
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
                if (radius == 10) {
                  radius = 100;
                } else {
                  radius = 10;
                }
              },
              tween: BorderRadiusTween(
                begin: BorderRadius.circular(10),
                end: BorderRadius.circular(radius),
              ),
              duration: Duration(milliseconds: 500),
              builder:
                  (BuildContext context, BorderRadius? value, Widget? child) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
