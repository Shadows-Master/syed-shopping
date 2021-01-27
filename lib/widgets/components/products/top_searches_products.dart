import 'package:flutter/material.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class TopSearchesProducts extends StatelessWidget {
  const TopSearchesProducts({
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
    return Container(
      height: 700,
      child: Column(
        children: [
          HomeSectionTitle(
            title: sectionTitle,
            subTitle: sectionSubTitle,
            route: sectionRoute,
          ),
          Expanded(
            //margin: EdgeInsets.only(top: 25),
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: ListView(
                //physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 30),
                shrinkWrap: true,
                children: [
                  TopProductCard(
                    productImage: 'assets/images/mirror.jpeg',
                    productLabel: 'MIRROR',
                    productName: 'The Mirror',
                    productAmount: '1495.00',
                  ),
                  TopProductCard(
                    productLabel: 'BALA',
                    productName: 'Classic 1lbs Weights',
                    productImage: 'assets/images/weigth.png',
                    productAmount: '49.00',
                  ),
                  TopProductCard(
                    productLabel: 'DUMBELL',
                    productName: 'The Dumbell',
                    productImage: 'assets/images/dumbell.jpg',
                    productAmount: '109.99',
                  ),
                  TopProductCard(
                    productLabel: 'BALA',
                    productName: 'Classic 1lbs Weights',
                    productImage: 'assets/images/weigth.png',
                    productAmount: '49.00',
                  ),
                  TopProductCard(
                    productLabel: 'DUMBELL',
                    productName: 'The Dumbell',
                    productImage: 'assets/images/dumbell.jpg',
                    productAmount: '109.99',
                  ),
                ],
              ),
            ),
          ),
          SpacerHeight(
            size: 90,
          )
        ],
      ),
    );
  }
}
