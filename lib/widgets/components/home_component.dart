import 'package:flutter/material.dart';

import 'categories_components.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: EdgeInsets.only(top: 25),
      child: ListView(
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          HomeCategories(
            title: 'LA Essentials',
            image: 'assets/images/essentials.jpg',
          ),
          HomeCategories(
            image: 'assets/images/care.jpg',
          ),
          HomeCategories(
            title: 'Health & Wellness',
            image: 'assets/images/health.jpg',
          ),
          HomeCategories(
            title: 'Plantry',
            image: 'assets/images/pantry.jpg',
          ),
          HomeCategories(
            title: 'Beauty',
            image: 'assets/images/beauty.jpg',
          ),
        ],
      ),
    );
  }
}
