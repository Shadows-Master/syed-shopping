import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class FastAfProducts extends StatelessWidget {
  const FastAfProducts({
    Key key,
    this.sectionTitle,
    this.sectionSubTitle,
    this.sectionRoute,
  }) : super(key: key);

  final String sectionTitle;
  final String sectionSubTitle;
  final String sectionRoute;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionTitle(
          title: sectionTitle,
          subTitle: sectionSubTitle,
          route: sectionRoute,
        ),
        Container(
          height: 360,
          margin: EdgeInsets.only(top: 25),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            shrinkWrap: true,
            children: [
              ProductCard(
                productImage: 'assets/images/masks.jpg',
                productLabel: 'CARAA',
                productName: 'Universal Mask',
                productAmount: '5.00',
              ),
              ProductCard(
                productLabel: 'EVERLANE',
                productName: 'Tie Dye Face Mask',
                productImage: 'assets/images/dye.jpeg',
                productAmount: '5.00',
              ),
              ProductCard(
                productLabel: 'EVERLANE',
                productName: 'Human Mask',
                productImage: 'assets/images/browndye .jpg',
                productAmount: '9.99',
              ),
            ],
          ),
        ),
        SpacerHeight(
          size: 90,
        )
      ],
    );
  }
}