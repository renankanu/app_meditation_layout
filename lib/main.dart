import 'package:app_meditation/app/screen/intro/intro_screen.dart';
import 'package:app_meditation/app/styles/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: kTextColor, fontFamily: "Cairo"),
      ),
      home: Intro(),
    );
  }
}
