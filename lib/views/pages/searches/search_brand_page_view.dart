import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/widgets/components/products/brands_products.dart';
import 'package:syed/widgets/components/products/categories_products.dart';
import 'package:syed/widgets/components/products/top_searches_products.dart';
import 'package:syed/widgets/forms/form_widget.dart';

class SearchBrandPageView extends StatefulWidget {
  final PageController mPageController;

  const SearchBrandPageView({Key key, this.mPageController}) : super(key: key);
  @override
  _SearchBrandPageViewState createState() => _SearchBrandPageViewState();
}

class _SearchBrandPageViewState extends State<SearchBrandPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Search',
                        softWrap: true,
                        style: TextStyle(
                            color: kAccentColor,
                            fontWeight: FontWeight.w700,
                            fontSize: fontSize(size: 23)),
                      ),
                    ),
                    BTextFormField(
                      prefixIcon: Icon(Feather.search),
                      hintText: 'Products and Brands',
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoriesProducts(
                        sectionTitle: 'Browse by Category',
                        mPageController: widget.mPageController,
                        width: 160,
                      ),
                      BrandsProducts(
                        sectionTitle: 'Browse by Brand',
                        width: 160,
                        isHome: false,
                      ),
                      TopSearchesProducts(
                        sectionTitle: 'Top Searches',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
