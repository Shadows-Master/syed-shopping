import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/brand_product_card.dart';
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
    this.top = 13,
    this.isHome = true,
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
  final bool isHome;

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
        (isHome)
            ? BrandProductHomeList()
            : BrandProductsSearchList(top: top, width: width, height: height),
      ],
    );
  }
}

class BrandProductHomeList extends StatelessWidget {
  const BrandProductHomeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.only(top: 15),
      child: ListView(
        padding: EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          HomeCategories(
            title: 'Activist',
            image: 'assets/images/waffle.jpg',
          ),
          HomeCategories(
            title: 'Shoes',
            image: 'assets/images/shoes.jpg',
          ),
          HomeCategories(
            title: 'Bark',
            image: 'assets/images/bark.png',
          ),
          HomeCategories(
            title: 'Baggu',
            image: 'assets/images/baggu.jpg',
          ),
          HomeCategories(
            title: 'Baby Tress',
            image: 'assets/images/tress.jpg',
          ),
          HomeCategories(
            title: 'Banana Bros',
            image: 'assets/images/bros.jpg',
          ),
        ],
      ),
    );
  }
}

class BrandProductsSearchList extends StatelessWidget {
  const BrandProductsSearchList({
    Key key,
    @required this.top,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double top;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      margin: EdgeInsets.only(top: top, bottom: 35),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10),
        shrinkWrap: true,
        children: [
          BrandProductCard(
            mTitle: 'Activist',
            mImage: 'assets/images/waffle.jpg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Shoes',
            mImage: 'assets/images/shoes.jpg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Bark',
            mImage: 'assets/images/bark.png',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Bala',
            mImage: 'assets/images/bala.jpeg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Baggu',
            mImage: 'assets/images/baggu.jpg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Baby Tress',
            mImage: 'assets/images/tress.jpg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
          BrandProductCard(
            mTitle: 'Banana Bros',
            mImage: 'assets/images/bros.jpg',
            mWidth: width,
            mHeight: height,
            mHorizontal: 8,
          ),
        ],
      ),
    );
  }
}
