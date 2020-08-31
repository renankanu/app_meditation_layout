import 'package:app_meditation/app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: Color(0xFFF5CEB8),
                  image: DecorationImage(image: AssetImage(Images.logoPath))),
            )
          ],
        ),
      ),
    );
  }
}
