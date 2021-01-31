import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/widgets/cards/brand_product_card.dart';

class BrandProductsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
                size: 16,
                color: kAccentColor,
              ),
              onPressed: () => Navigator.of(context).popAndPushNamed('/')),
          title: Text(
            'Brands',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontSize: fontSize(size: 19),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                BrandProductCard(
                  mImage: 'assets/images/waffle.jpg',
                  mTitle: 'Activist',
                ),
                BrandProductCard(
                  mImage: 'assets/images/shoes.jpg',
                  mTitle: 'Shoes',
                ),
                BrandProductCard(
                  mImage: 'assets/images/bark.png',
                  mTitle: 'Bark',
                ),
                BrandProductCard(
                  mImage: 'assets/images/bala.jpeg',
                  mTitle: 'Bala',
                ),
                BrandProductCard(
                  mImage: 'assets/images/tress.jpg',
                  mTitle: 'Baby Tress',
                ),
                BrandProductCard(
                  mImage: 'assets/images/bros.jpg',
                  mTitle: 'Banana Bros',
                ),
              ],
            ),
          )),
    );
  }
}
