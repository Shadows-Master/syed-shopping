import 'package:flutter/material.dart';
import 'package:syed/views/pages/brand_products_page_view.dart';
import 'package:syed/views/pages/home_products_page_view.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
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
          children: [
            HomeProductsPageView(
              mPageController: _mPageController,
            ),
            BrandProductsPageView()
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
