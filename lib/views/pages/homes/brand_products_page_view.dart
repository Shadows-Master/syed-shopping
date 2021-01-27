import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/widgets/components/categories_components.dart';

class BrandProductsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
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
              children: [
                HomeCategories(
                  image: 'assets/images/waffle.jpg',
                  title: 'Activist',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                ),
                HomeCategories(
                  image: 'assets/images/shoes.jpg',
                  title: 'Shoes',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                ),
                HomeCategories(
                  image: 'assets/images/bark.png',
                  title: 'Bark',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                ),
                HomeCategories(
                  image: 'assets/images/bala.jpeg',
                  title: 'Bala',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                ),
                HomeCategories(
                  image: 'assets/images/tress.jpg',
                  title: 'Baby Tress',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                ),
                HomeCategories(
                  image: 'assets/images/bros.jpg',
                  title: 'Banana Bros',
                  radius: 5,
                  padding: 55,
                  width: 250,
                  height: 150,
                ),
              ],
            )),
      ),
    );
  }
}
