import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Package extends StatefulWidget {
  const Package({Key? key}) : super(key: key);

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool one = false;
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkResponse(
        onTap: () {
          setState(() {
            one = !one;
          });
          if (controller!.isAnimating) {
            controller!.stop();
          } else if (controller!.isCompleted) {
            controller!.reverse();
          } else {
            controller!.forward();
          }
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Lottie.network(
              "https://assets6.lottiefiles.com/packages/lf20_pWTOxQsYjN.json",
              controller: controller),
        ),
      ),
    );
  }
}
