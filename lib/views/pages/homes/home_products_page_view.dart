import 'package:flutter/material.dart';
import 'package:syed/widgets/components/home_component.dart';
import 'package:syed/widgets/components/products/brands_products.dart';
import 'package:syed/widgets/components/products/cozy_products.dart';
import 'package:syed/widgets/components/products/electronics_products.dart';
import 'package:syed/widgets/components/products/fast_af_products.dart';
import 'package:syed/widgets/components/products/fitness_products.dart';
import 'package:syed/widgets/components/products/health_products.dart';
import 'package:syed/widgets/components/products/holidays_products.dart';
import 'package:syed/widgets/components/products/home_living_products.dart';
import 'package:syed/widgets/components/products/humans_products.dart';
import 'package:syed/widgets/home_page_header.dart';

class HomeProductsPageView extends StatefulWidget {
  final PageController mPageController;

  const HomeProductsPageView({Key key, this.mPageController}) : super(key: key);
  @override
  _HomeProductsPageViewState createState() => _HomeProductsPageViewState();
}

class _HomeProductsPageViewState extends State<HomeProductsPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              child: Column(
                children: [
                  HomePageHeader(),
                  CategoriesList(),
                  HolidaysProducts(),
                  FastAfProducts(sectionTitle: 'Popular on Spree'),
                  HealthProducts(
                    sectionTitle: 'Health is Wealth',
                  ),
                  CozyProducts(
                    sectionTitle: 'Cozy At Home',
                  ),
                  HumansProducts(sectionTitle: 'For Him, For Her'),
                  BrandsProducts(
                    sectionTitle: 'Browse by Brand',
                    mPageController: widget.mPageController,
                  ),
                  FitnessProducts(sectionTitle: 'Fitness'),
                  ElectronicsProducts(sectionTitle: 'Electronics'),
                  HomeLivingProducts(sectionTitle: 'Home & Living'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
