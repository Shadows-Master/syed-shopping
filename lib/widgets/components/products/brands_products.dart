import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/components/categories_components.dart';
import 'package:syed/widgets/titles/section_title.dart';

class BrandsProducts extends StatelessWidget {
  const BrandsProducts({
    Key key,
    this.sectionTitle,
    this.sectionSubTitle,
    this.sectionRoute,
    this.mPageController,
    this.height,
    this.width,
    this.radius,
    this.padding = 40,
    this.top = 15,
  }) : super(key: key);

  final String sectionTitle;
  final String sectionSubTitle;
  final String sectionRoute;
  final PageController mPageController;
  final double height;
  final double width;
  final double radius;
  final double padding;
  final double top;

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
          margin: EdgeInsets.only(top: top),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            shrinkWrap: true,
            children: [
              HomeCategories(
                image: 'assets/images/waffle.jpg',
                title: 'Activist',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/shoes.jpg',
                title: 'Shoes',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/bark.png',
                title: 'Bark',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/bala.jpeg',
                title: 'Bala',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/baggu.jpg',
                title: 'Baggu',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/tress.jpg',
                title: 'Baby Tress',
                padding: padding,
                radius: radius,
                width: width,
                height: height,
              ),
              HomeCategories(
                image: 'assets/images/bros.jpg',
                title: 'Banana Bros',
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
