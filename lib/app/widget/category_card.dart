import 'package:app_meditation/app/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardCategory extends StatelessWidget {
  final String svgPath;
  final String title;
  final Function onPress;
  const CardCategory({
    Key key,
    this.svgPath,
    this.title,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor)
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPress,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgPath),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
