import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class FitnessProducts extends StatelessWidget {
  const FitnessProducts({
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
        SpacerHeight(
          size: 50,
        ),
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
                productLabel: 'DUMBELL',
                productName: 'Dumbells',
                productImage: 'assets/images/dumbell.jpg',
                productAmount: '59.99',
              ),
              ProductCard(
                productImage: 'assets/images/yoga.jpg',
                productLabel: 'ALO',
                productName: 'Uplifting Yoga Block',
                productAmount: '24.00',
              ),
              ProductCard(
                productLabel: 'HIGHER DOSE',
                productName: 'Infrared Sauna Blanket V3',
                productImage: 'assets/images/sauna.jpg',
                productAmount: '499.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
