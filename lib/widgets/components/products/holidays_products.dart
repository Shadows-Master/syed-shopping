import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class HolidaysProducts extends StatelessWidget {
  const HolidaysProducts({
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
                productAmount: '119',
              ),
              ProductCard(
                productLabel: 'GREAT JONES',
                productName: 'The Dutchess',
                productImage: 'assets/images/dutchess.jpeg',
                productAmount: '155.00',
              ),
              ProductCard(
                productLabel: 'NINTENDO',
                productName: 'Nintendo Switch - Neon Console',
                productImage: 'assets/images/nintendo.jpg',
                productAmount: '299.99',
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
