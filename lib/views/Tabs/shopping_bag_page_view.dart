import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:syed/core/Product.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:syed/providers/shopping_bag_provider.dart';

class ShoppingBagPageView extends StatefulWidget {
  @override
  _ShoppingBagPageViewState createState() =>
      _ShoppingBagPageViewState();
}

class _ShoppingBagPageViewState extends State<ShoppingBagPageView> {
  List<Product> mProductList = [];
  bool _isWindowChoosed = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ShoppingBagProvider>();
      setState(() {});
    });
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
                      : ListView.builder(
                          itemCount: mProductList.length,
                          itemBuilder: (context, index) {
                            Product _mProduct = mProductList[index];
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              margin: EdgeInsets.only(bottom: 12),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: kPrimaryLightColor
                                              .withOpacity(.05),
                                          borderRadius:
                                              BorderRadius.circular(
                                                  8),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  _mProduct.image),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _mProduct.category,
                                            softWrap: true,
                                            style: TextStyle(
                                                fontWeight:
                                                    FontWeight.w400,
                                                fontSize: fontSize(
                                                    size: 12)),
                                          ),
                                          Text(
                                            _mProduct.name,
                                            softWrap: true,
                                            style: TextStyle(
                                                color: kAccentColor,
                                                fontWeight:
                                                    FontWeight.w700,
                                                fontSize: fontSize(
                                                    size: 17)),
                                          ),
                                          Text(
                                            _mProduct.colorCode
                                                .toUpperCase(),
                                            softWrap: true,
                                            style: TextStyle(
                                                fontWeight:
                                                    FontWeight.w400,
                                                fontSize: fontSize(
                                                    size: 12)),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '\$${_mProduct.price}',
                                                softWrap: true,
                                                style: TextStyle(
                                                    color:
                                                        kAccentColor,
                                                    fontWeight:
                                                        FontWeight
                                                            .w700,
                                                    fontSize:
                                                        fontSize(
                                                            size:
                                                                15)),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(
                                                        left: 105),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'QTY',
                                                      softWrap: true,
                                                      style: TextStyle(
                                                          color:
                                                              kAccentColor,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                          fontSize:
                                                              fontSize(
                                                                  size:
                                                                      15)),
                                                    ),
                                                    SpacerWidth(
                                                      size: 8,
                                                    ),
                                                    Text(
                                                      '${_mProduct.quantity}',
                                                      softWrap: true,
                                                      style: TextStyle(
                                                          color:
                                                              kAccentColor,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                          fontSize:
                                                              fontSize(
                                                                  size:
                                                                      15)),
                                                    ),
                                                    SpacerWidth(
                                                      size: 8,
                                                    ),
                                                    Icon(
                                                      SimpleLineIcons
                                                          .arrow_down,
                                                      color:
                                                          kAccentColor,
                                                      size: 15,
                                                    )
                                                  ],
                                                ),
                                              )
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
                        ),
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
                                height: 60,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8)),
                                  color: kPrimaryColor,
                                  child: (!_isWindowChoosed)
                                      ? Text(
                                          'Choose Delivery Window',
                                          softWrap: true,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight:
                                                  FontWeight.w700,
                                              fontSize:
                                                  fontSize(size: 16)),
                                        )
                                      : CircularPercentIndicator(
                                          radius: 25,
                                          animationDuration: 1500,
                                          animation: true,
                                          lineWidth: 2,
                                          percent: 1.0,
                                          progressColor: Colors.white,
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      _isWindowChoosed = true;
                                    });
                                    Future.delayed(
                                        Duration(milliseconds: 1200),
                                        () {
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (BuildContext
                                                  context) =>
                                              ClipRRect(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius
                                                          .circular(
                                                              30),
                                                      topRight: Radius
                                                          .circular(
                                                              30)),
                                                  child: Container(
                                                    padding: EdgeInsets
                                                        .symmetric(
                                                            horizontal:
                                                                20),
                                                    margin: EdgeInsets
                                                        .only(
                                                            top: 20),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Select Your Delivery Time',
                                                          softWrap:
                                                              true,
                                                          style: TextStyle(
                                                              color:
                                                                  kAccentColor,
                                                              fontSize: fontSize(
                                                                  size:
                                                                      11),
                                                              fontWeight:
                                                                  FontWeight.w900),
                                                        ),
                                                        ListView(
                                                          shrinkWrap:
                                                              true,
                                                          children: [
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      kTextColor.withOpacity(.1),
                                                                  borderRadius: BorderRadius.circular(8)),
                                                              child:
                                                                  Column(
                                                                children: [
                                                                  Text(
                                                                    'Today',
                                                                    softWrap: true,
                                                                    style: TextStyle(fontSize: fontSize(size: 11), fontWeight: FontWeight.w500),
                                                                  ),
                                                                  Container(
                                                                    child: Row(
                                                                      children: [
                                                                        Container(
                                                                          child: Row(
                                                                            children: [],
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                          SimpleLineIcons.check,
                                                                          color: Colors.white,
                                                                          size: 19,
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )));
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
}

class EmptyBox extends StatelessWidget {
  const EmptyBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Bag is Empty',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kAccentColor,
              fontSize: 23),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "When you add products to your order they'll show up here.",
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
