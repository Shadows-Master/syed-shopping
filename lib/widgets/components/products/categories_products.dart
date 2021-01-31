import 'package:flutter/material.dart';
import 'package:syed/widgets/cards/brand_product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

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
          height: 96,
          margin: EdgeInsets.only(top: 13, bottom: 35),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10),
            shrinkWrap: true,
            children: [
              BrandProductCard(
                mTitle: 'LA Essentials',
                mImage: 'assets/images/essentials.jpg',
                mWidth: width,
                mHeight: height,
                mHorizontal: 8,
              ),
              BrandProductCard(
                mTitle: 'Personal Care',
                mImage: 'assets/images/care.jpg',
                mWidth: width,
                mHeight: height,
                mHorizontal: 8,
              ),
              BrandProductCard(
                mTitle: 'Health & Wellness',
                mImage: 'assets/images/health.jpg',
                mWidth: width,
                mHeight: height,
                mHorizontal: 8,
              ),
              BrandProductCard(
                mTitle: 'Plantry',
                mImage: 'assets/images/pantry.jpg',
                mWidth: width,
                mHeight: height,
                mHorizontal: 8,
              ),
              BrandProductCard(
                mTitle: 'Beauty',
                mImage: 'assets/images/beauty.jpg',
                mWidth: width,
                mHeight: height,
                mHorizontal: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
