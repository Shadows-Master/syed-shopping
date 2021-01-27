import 'package:flutter/material.dart';
import 'package:syed/widgets/titles/section_title.dart';

import '../categories_components.dart';

class CategoriesProducts extends StatelessWidget {
  const CategoriesProducts({
    Key key,
    this.sectionTitle,
    this.sectionSubTitle,
    this.sectionRoute,
    this.mPageController,
    this.height,
    this.width,
    this.radius,
    this.padding = 40,
  }) : super(key: key);

  final String sectionTitle;
  final String sectionSubTitle;
  final String sectionRoute;
  final PageController mPageController;
  final double height;
  final double width;
  final double radius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionTitle(
          title: sectionTitle,
          subTitle: sectionSubTitle,
          route: sectionRoute,
          pageController: mPageController,
        ),
        Container(
          height: 140,
          margin: EdgeInsets.only(top: 15),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            shrinkWrap: true,
            children: [
              HomeCategories(
                title: 'LA Essentials',
                image: 'assets/images/essentials.jpg',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/care.jpg',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                title: 'Health & Wellness',
                image: 'assets/images/health.jpg',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                title: 'Plantry',
                image: 'assets/images/pantry.jpg',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                title: 'Beauty',
                image: 'assets/images/beauty.jpg',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
