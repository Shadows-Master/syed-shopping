import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class HumansProducts extends StatelessWidget {
  const HumansProducts({
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
                productImage: 'assets/images/legging.jpg',
                productLabel: 'ALO',
                productName: 'High-Waist Airbrush Legging',
                productAmount: '82.00',
              ),
              ProductCard(
                productLabel: 'MEJURI',
                productName: 'Single Colored Mini Hoop',
                productImage: 'assets/images/hoop.jpg',
                productAmount: '60.00',
              ),
              ProductCard(
                productLabel: 'SWEAT',
                productName: 'Sweat',
                productImage: 'assets/images/sweat.png',
                productAmount: '59.99',
              ),
            ],
          ),
        ),
        SpacerHeight(
          size: 50,
        )
      ],
    );
  }
}
