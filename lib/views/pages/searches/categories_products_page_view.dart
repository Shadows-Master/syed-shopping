import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/widgets/components/categories_components.dart';

class CategoriesProductsPageView extends StatefulWidget {
  final PageController mPageController;

  const CategoriesProductsPageView({Key key, this.mPageController})
      : super(key: key);
  @override
  _CategoriesProductsPageViewState createState() =>
      _CategoriesProductsPageViewState();
}

class _CategoriesProductsPageViewState
    extends State<CategoriesProductsPageView> {
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
              onPressed: () => widget.mPageController.jumpToPage(0)),
          title: Text(
            'Categories',
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
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: ListView(
              children: [
                HomeCategories(
                  title: 'LA Essentials',
                  image: 'assets/images/essentials.jpg',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                  vertical: 8,
                ),
                HomeCategories(
                  image: 'assets/images/care.jpg',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                  vertical: 8,
                ),
                HomeCategories(
                  title: 'Health & Wellness',
                  image: 'assets/images/health.jpg',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                  vertical: 8,
                ),
                HomeCategories(
                  title: 'Plantry',
                  image: 'assets/images/pantry.jpg',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                  vertical: 8,
                ),
                HomeCategories(
                  title: 'Beauty',
                  image: 'assets/images/beauty.jpg',
                  padding: 55,
                  radius: 5,
                  width: 250,
                  height: 150,
                  vertical: 8,
                ),
              ],
            )),
      ),
    );
  }
}
