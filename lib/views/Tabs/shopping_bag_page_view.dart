import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:syed/core/Product.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/providers/shopping_bag_provider.dart';
import 'package:syed/screens/windows_times_screen.dart';
import 'package:syed/widgets/buttons/loader_btn.dart';
import 'package:syed/widgets/components/box/empty_box.dart';
import 'package:syed/widgets/components/shopping_bag/shopping_bag_product_details.dart';

class ShoppingBagPageView extends StatefulWidget {
  @override
  _ShoppingBagPageViewState createState() =>
      _ShoppingBagPageViewState();
}

class _ShoppingBagPageViewState extends State<ShoppingBagPageView> {
  List<Product> mProductList = [];
  bool _isWindowChoosed = false;
  final String _mDefaultButtonText = "Choose Delivery Window";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mProductList =
        context.watch<ShoppingBagProvider>().mBagListProduct;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: ConfigSize.screenHeight * 10,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Stack(
                    children: [
                      Text(
                        'Shopping Bag',
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: fontSize(size: 23),
                            foreground: Paint()
                              ..color = kAccentColor
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.1),
                      ),
                      Text(
                        'Shopping Bag',
                        softWrap: true,
                        style: TextStyle(
                            color: kAccentColor,
                            fontWeight: FontWeight.w700,
                            fontSize: fontSize(size: 23)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: ConfigSize.screenHeight * 2.2,
                  margin: EdgeInsets.only(top: 10),
                  child: (mProductList.length == 0)
                      ? EmptyBox()
                      : choosenProductList(),
                ),
              ),
              (mProductList.length > 0)
                  ? Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Divider(
                              color: kTextColor.withOpacity(.4),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Apply a Promo Code',
                                    softWrap: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: kAccentColor,
                                        fontSize: fontSize(size: 14)),
                                  ),
                                  Icon(
                                    SimpleLineIcons.arrow_down,
                                    color: kAccentColor,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: kTextColor.withOpacity(.4),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SubTotal',
                                    softWrap: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: kAccentColor,
                                        fontSize: fontSize(size: 17)),
                                  ),
                                  Text(
                                    '\$35.00 + Taxes & Fees',
                                    softWrap: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: kTextColor,
                                        fontSize: fontSize(size: 13)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: kTextColor.withOpacity(.4),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: ButtonTheme(
                                minWidth: ConfigSize.screenWidth,
                                height: height(size: 70),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8)),
                                  color: kPrimaryColor,
                                  child: (!_isWindowChoosed)
                                      ? Text(
                                          _mDefaultButtonText,
                                          softWrap: true,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight:
                                                  FontWeight.w700,
                                              fontSize:
                                                  fontSize(size: 16)),
                                        )
                                      : LoaderButton(),
                                  onPressed: () {
                                    setState(() {
                                      _isWindowChoosed = true;
                                    });
                                    Future.delayed(
                                        Duration(milliseconds: 1200),
                                        () {
                                      setState(() {
                                        _isWindowChoosed = false;
                                      });
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor:
                                              Colors.transparent,
                                          builder: (BuildContext
                                                  context) =>
                                              WindowsTimesScreen());
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  ListView choosenProductList() {
    return ListView.builder(
      itemCount: mProductList.length,
      itemBuilder: (context, index) {
        Product _mProduct = mProductList[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(_mProduct.image),
                          fit: BoxFit.contain)),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _mProduct.category,
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize(size: 12)),
                      ),
                      Text(
                        _mProduct.name,
                        softWrap: true,
                        style: TextStyle(
                            color: kAccentColor,
                            fontWeight: FontWeight.w700,
                            fontSize: fontSize(size: 17)),
                      ),
                      Text(
                        _mProduct.colorCode.toUpperCase(),
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize(size: 12)),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${_mProduct.price}',
                            softWrap: true,
                            style: TextStyle(
                                color: kAccentColor,
                                fontWeight: FontWeight.w700,
                                fontSize: fontSize(size: 15)),
                          ),
                          ShoppingBagProductDetails(
                              mProduct: _mProduct)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
