import 'package:app_meditation/app/animations/scale_animation.dart';
import 'package:app_meditation/app/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Intro extends HookWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();

    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/lottie/meditation.json',
          onLoaded: (composition) {
            animationController.addStatusListener((status) {
              if (status == AnimationStatus.completed) {
                Navigator.pushReplacement(context, ScaleRoute(page: Home()));
              }
            });
            animationController
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),
    );
  }
}
