import 'package:flutter/material.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/screens/electronics_product_details_screen.dart';
import 'package:syed/widgets/cards/product_card.dart';
import 'package:syed/widgets/titles/section_title.dart';

class ElectronicsProducts extends StatelessWidget {
  const ElectronicsProducts({
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
                productLabel: 'SONY',
                productName: 'WH-1000XM4 Wireless Noise-Cancel',
                productImage: 'assets/images/sony.png',
                productAmount: '299.99',
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) =>
                          ElectronicsProductDetailsScreen());
                },
                child: ProductCard(
                  productLabel: 'XBOX',
                  productName: 'XBOX Series X Game Console',
                  productImage: 'assets/images/xbox-preview.png',
                  productAmount: '499.99',
                ),
              ),
              ProductCard(
                productLabel: 'ELECTRONICS',
                productName: 'Home Cinema',
                productImage: 'assets/images/electronics.png',
                productAmount: '1099.99',
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
