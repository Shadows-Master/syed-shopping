import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class HealthProducts extends StatelessWidget {
  const HealthProducts({
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
                productImage: 'assets/images/mirror.jpeg',
                productLabel: 'MIRROR',
                productName: 'The Mirror',
                productAmount: '1495.00',
              ),
              ProductCard(
                productLabel: 'BALA',
                productName: 'Classic 1lbs Weights',
                productImage: 'assets/images/weigth.png',
                productAmount: '49.00',
              ),
              ProductCard(
                productLabel: 'DUMBELL',
                productName: 'The Dumbell',
                productImage: 'assets/images/dumbell.jpg',
                productAmount: '109.99',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
