import 'package:flutter/material.dart';
import 'package:syed/views/Tabs/home_page_view.dart';
import 'package:syed/views/bottom_bar_view.dart';
import 'package:syed/views/pages/brand_products_page_view.dart';

var routes = {
  '/': (BuildContext context) => BottomBarView(),
  '/home': (BuildContext context) => HomePageView(),
  '/home-brand': (BuildContext context) => BrandProductsPageView(),
};
