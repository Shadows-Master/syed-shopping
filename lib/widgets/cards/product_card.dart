import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.productLabel,
    this.productName,
    this.productAmount,
    this.productImage,
  }) : super(key: key);

  final String productLabel;
  final String productName;
  final String productAmount;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 5,
            color: Colors.black38.withOpacity(0.1))
      ]),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    image:
                        AssetImage(productImage ?? 'assets/images/stone.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 100,
            width: 250,
            padding: EdgeInsets.only(left: 15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productLabel ?? 'VITRUVI',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 15),
                      fontWeight: FontWeight.w500),
                ),
                SpacerHeight(size: 5),
                Text(
                  productName ?? 'Stone Diffuser',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: fontSize(size: 19),
                      color: kAccentColor,
                      fontWeight: FontWeight.bold),
                ),
                SpacerHeight(size: 5),
                Text(
                  (productAmount != null) ? '\$$productAmount' : '\$150',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 20),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
