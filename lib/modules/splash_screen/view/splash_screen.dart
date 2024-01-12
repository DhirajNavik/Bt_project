import 'package:cabto_bt/utils/app_color.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Animate(
                effects: const [
                  ScaleEffect(duration: Duration(seconds: 1)),
                  SlideEffect(
                      duration: Duration(seconds: 2),
                      begin: Offset(0, 0),
                      end: Offset(0, 0))
                ],
                child: Text(
                  "CABTO",
                  style: TextStyle(fontSize: 0, color: AppColor.white),
                )).then(),
            Animate(
                effects: const [
                  ScaleEffect(duration: Duration(seconds: 1)),
                  SlideEffect(
                      duration: Duration(seconds: 2),
                      begin: Offset(0, 0),
                      end: Offset(0, 0))
                ],
                child: Text(
                  "CABTO",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 100,
                      color: AppColor.yellow),
                ))
          ],
        ),
      ),
    );
  }
}
