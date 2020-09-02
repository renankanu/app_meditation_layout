import 'package:app_meditation/app/styles/colors.dart';
import 'package:app_meditation/app/utils/images.dart';
import 'package:app_meditation/app/widget/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              image: Images.calendar,
              title: "Today",
              onPress: () {},
            ),
            BottomNavItem(
              image: Images.gym,
              title: "Excercise",
              onPress: () {},
              isSelected: true,
            ),
            BottomNavItem(
              image: Images.settings,
              title: "Settings",
              onPress: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage(Images.pilates_gpdb),
                ),
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(Images.menu),
                    ),
                  ),
                  Text(
                    "Good Morning \nPeople",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30.0),
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          icon: SvgPicture.asset(Images.search),
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CardCategory(
                          svgPath: Images.hamburger,
                          title: "Diet recommendation",
                          onPress: () {},
                        ),
                        CardCategory(
                          svgPath: Images.excercise,
                          title: "Kegel Exercises",
                          onPress: () {},
                        ),
                        CardCategory(
                          svgPath: Images.meditation,
                          title: "Meditation",
                          onPress: () {},
                        ),
                        CardCategory(
                          svgPath: Images.yoga,
                          title: "Yoga",
                          onPress: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String image;
  final String title;
  final Function onPress;
  final bool isSelected;
  const BottomNavItem({
    Key key,
    this.image,
    this.title,
    this.onPress,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(image),
          Text(
            title,
            style: TextStyle(color: isSelected ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
