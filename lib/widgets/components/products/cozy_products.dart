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
          height: 335,
          margin: EdgeInsets.only(top: 15),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10),
            shrinkWrap: true,
            children: [
              ProductCard(
                productImage: 'assets/images/nappers.png',
                productLabel: 'BEARABY',
                productName: 'Cotton Napper',
                productAmount: '249.00',
              ),
              ProductCard(
                productLabel: 'PARACHUTE',
                productName: 'Waffle Robe',
                productImage: 'assets/images/robe.png',
                productAmount: '119.00',
              ),
              ProductCard(
                productLabel: 'KITCHEN',
                productName: 'Waffle Kitchen',
                productImage: 'assets/images/waffle.png',
                productAmount: '59.99',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
