import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class CozyProducts extends StatelessWidget {
  const CozyProducts({
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
                productImage: 'assets/images/nappers.jpg',
                productLabel: 'BEARABY',
                productName: 'Cotton Napper',
                productAmount: '249.00',
              ),
              ProductCard(
                productLabel: 'PARACHUTE',
                productName: 'Waffle Robe',
                productImage: 'assets/images/robe.jpg',
                productAmount: '119.00',
              ),
              ProductCard(
                productLabel: 'KITCHEN',
                productName: 'Waffle Kitchen',
                productImage: 'assets/images/waffle.jpg',
                productAmount: '59.99',
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
