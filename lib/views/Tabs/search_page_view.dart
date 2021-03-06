import 'package:flutter/material.dart';
import 'package:syed/views/pages/searches/categories_products_page_view.dart';
import 'package:syed/views/pages/searches/search_brand_page_view.dart';

class SearchPageView extends StatefulWidget {
  @override
  _SearchPageViewState createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  int mPage = 0;
  PageController _mPageController;

  @override
  void initState() {
    _mPageController =
        PageController(initialPage: mPage, keepPage: true, viewportFraction: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _mPageController,
          pageSnapping: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SearchBrandPageView(
              mPageController: _mPageController,
            ),
            CategoriesProductsPageView(
              mPageController: _mPageController,
            )
          ],
          onPageChanged: (int mIndex) {
            setState(() {
              mPage = mIndex;
            });
          },
        ),
      ),
    );
  }
}
