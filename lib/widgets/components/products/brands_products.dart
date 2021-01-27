import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/components/categories_components.dart';
import 'package:syed/widgets/titles/section_title.dart';

class BrandsProducts extends StatelessWidget {
  const BrandsProducts({
    Key key,
    this.sectionTitle,
    this.sectionSubTitle,
    this.sectionRoute, this.mPageController,
  }) : super(key: key);

  final String sectionTitle;
  final String sectionSubTitle;
  final String sectionRoute;
  final PageController mPageController;

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
          height: 170,
          margin: EdgeInsets.only(top: 25),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            shrinkWrap: true,
            children: [
              HomeCategories(
                image: 'assets/images/nappers.jpg',
                title: 'BEARABY',
              ),
              HomeCategories(
                image: 'assets/images/nappers.jpg',
                title: 'BEARABY',
              ),
              HomeCategories(
                image: 'assets/images/nappers.jpg',
                title: 'BEARABY',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
