import 'package:flutter/material.dart';
import 'package:syed/screens/account_screen/account_details_screen.dart';
import 'package:syed/views/Tabs/home_page_view.dart';
import 'package:syed/views/bottom_bar_view.dart';
import 'package:syed/views/pages/homes/brand_products_page_view.dart';

var routes = {
  '/': (BuildContext context) => BottomBarView(),
  '/home': (BuildContext context) => HomePageView(),
  '/home-brand': (BuildContext context) => BrandProductsPageView(),
  '/user/account-details': (BuildContext context) => AccountDetailsScreen(),
};
