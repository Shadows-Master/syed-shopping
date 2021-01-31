import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class HomeLivingProducts extends StatelessWidget {
  const HomeLivingProducts({
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
          height: 310,
          margin: EdgeInsets.only(top: 15),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10),
            shrinkWrap: true,
            children: [
              ProductCard(
                productLabel: 'W&P PORTER',
                productName: 'Glass Bottle',
                productImage: 'assets/images/porter.jpg',
                productAmount: '35.00',
              ),
              ProductCard(
                productLabel: 'POKETO',
                productName: 'Concept Planner',
                productImage: 'assets/images/planner.jpg',
                productAmount: '34.00',
              ),
            ],
          ),
        ),
        SpacerHeight(
          size: 20,
        )
      ],
    );
  }
}
