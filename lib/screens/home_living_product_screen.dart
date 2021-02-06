import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syed/core/Product.dart';
import 'package:syed/core/ProductColor.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';
import 'package:provider/provider.dart';
import 'package:syed/providers/shopping_bag_provider.dart';

class HomeLivingProductScreen extends StatefulWidget {
  HomeLivingProductScreen({Key key}) : super(key: key);

  @override
  _HomeLivingProductScreenState createState() =>
      _HomeLivingProductScreenState();
}

class _HomeLivingProductScreenState
    extends State<HomeLivingProductScreen>
    with SingleTickerProviderStateMixin {
  PageController _mSlideProductPageController;
  AnimationController _animationController;
  Animation _animation;
  int _mSlideIndex = 0;
  bool _isOpen = false, _isLoading = false;
  bool _isSelected = false, _mBtnColorChanged = false;
  final int _mProductQuantity = 1;
  final int _mProductLimit = 1;
  int _mProductIndex = 1;
  final String _mSign = '-';
  final GlobalKey<ScaffoldState> _globalKey =
      GlobalKey<ScaffoldState>();
  Product _product = Product();

  final String _mLabel = "W&P PORTER";
  final String _mDesignation = "Glass Bottle";
  final String _mPrice = "35.00";
  final String _mDescription = description;
  String _mColorName = "Blush";
  String _mColorCode = '0xFFEACAC2';

  final List<Widget> _mElements = [
    Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/porter.png'),
              fit: BoxFit.contain)),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/xbox-preview.png'),
              fit: BoxFit.contain)),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/waffle.png'),
              fit: BoxFit.contain)),
    ),
    Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/sony.png'),
              fit: BoxFit.contain)),
    ),
  ];

  mWarning(BuildContext context) {
    return Flushbar(
      backgroundColor: kAccentColor,
      message: 'This product is limited to one per bag',
      animationDuration: Duration(milliseconds: 2000),
      flushbarPosition: FlushbarPosition.TOP,
      duration: Duration(milliseconds: 2800),
    ).show(context);
  }

  @override
  void initState() {
    _mSlideProductPageController = PageController(
        initialPage: _mSlideIndex,
        viewportFraction: 1,
        keepPage: true);
    _animationController = AnimationController(
      duration: Duration(seconds: 8),
      vsync: this,
    );
    _animation = Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeIn));
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 450,
                        color: kPrimaryLightColor.withOpacity(.03),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 300,
                                padding: EdgeInsets.only(top: 35),
                                child: PageView(
                                  controller:
                                      _mSlideProductPageController,
                                  onPageChanged: (mPage) {
                                    setState(() {
                                      _mSlideIndex = mPage;
                                    });
                                  },
                                  children: _mElements,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 25, top: 15),
                                child: Row(
                                  children: [
                                    ...List.generate(
                                        _mElements.length,
                                        (index) => paginateImage(
                                            index: index))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              _mLabel,
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: fontSize(size: 12),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              _mDesignation,
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: fontSize(size: 26),
                                  color: kAccentColor,
                                  fontWeight: FontWeight.w900),
                            ),
                            SpacerHeight(size: 5),
                            Text(
                              '\$$_mPrice',
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: fontSize(size: 17),
                                  color: kAccentColor,
                                  fontWeight: FontWeight.w900),
                            ),
                            SpacerHeight(size: 5),
                            Text(
                              _mDescription,
                              softWrap: true,
                              maxLines: 15,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  letterSpacing: 0.6,
                                  height: 1.5,
                                  fontSize: fontSize(size: 16),
                                  color: kAccentColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: kTextColor,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: 10, bottom: (_isOpen) ? 10 : 0),
                        child: Column(
                          children: [
                            productColorDetails(),
                            (_isOpen) ? productColorList() : Text('')
                          ],
                        ),
                      ),
                      Divider(
                        color: kTextColor,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 60,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8),
                                    border: Border.all(
                                        color: kTextColor
                                            .withOpacity(.5),
                                        width: 1.0)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                    children: [
                                      Operator(
                                        mSign: _mSign,
                                        onPress: () {
                                          if (_mProductIndex == 1) {
                                            _mProductIndex = 1;
                                          } else {
                                            if (_mProductIndex > 1) {
                                              setState(() {
                                                _mProductIndex =
                                                    _mProductIndex--;
                                              });
                                            }
                                          }
                                        },
                                      ),
                                      Text(
                                        '$_mProductIndex',
                                        style: TextStyle(
                                            color: kAccentColor,
                                            fontWeight:
                                                FontWeight.w700,
                                            fontSize:
                                                fontSize(size: 17)),
                                      ),
                                      Operator(
                                        mSign: '+',
                                        onPress: () {
                                          if (_mProductIndex ==
                                              _mProductLimit) {
                                            return mWarning(context);
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SpacerWidth(size: 10),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: ButtonTheme(
                                  minWidth: width(size: 255),
                                  height: 60,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)),
                                    color: (!_mBtnColorChanged)
                                        ? kPrimaryColor
                                        : kAccentColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        (_isLoading)
                                            ? CircularPercentIndicator(
                                                radius: 25,
                                                animationDuration:
                                                    1500,
                                                animation: true,
                                                lineWidth: 2,
                                                percent: 1.0,
                                                progressColor:
                                                    Colors.white,
                                              )
                                            : Text(''),
                                        SpacerWidth(
                                            size: (_isLoading)
                                                ? 25
                                                : 0),
                                        (!_mBtnColorChanged)
                                            ? Text(
                                                'Add to Bag',
                                                softWrap: true,
                                                textAlign:
                                                    TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors
                                                        .white,
                                                    fontWeight:
                                                        FontWeight
                                                            .w800,
                                                    fontSize:
                                                        fontSize(
                                                            size:
                                                                18)),
                                              )
                                            : AnimatedBuilder(
                                                animation:
                                                    _animationController,
                                                builder:
                                                    (context,
                                                            child) =>
                                                        Transform(
                                                          transform: Matrix4.translationValues(
                                                              0,
                                                              -_animation
                                                                  .value,
                                                              0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                SimpleLineIcons
                                                                    .check,
                                                                color:
                                                                    Colors.white,
                                                              ),
                                                              SpacerWidth(
                                                                size:
                                                                    5,
                                                              ),
                                                              Text(
                                                                'Added to Bag',
                                                                softWrap:
                                                                    true,
                                                                textAlign:
                                                                    TextAlign.center,
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontWeight: FontWeight.w800,
                                                                    fontSize: fontSize(size: 18)),
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                      ],
                                    ),
                                    onPressed: () {
                                      _product = Product(
                                          name: 'Glass Bottle',
                                          colorCode: 'Blush',
                                          image:
                                              'assets/images/porter.png',
                                          quantity: 1,
                                          price: '35.00',
                                          category: 'W&P PORTER');
                                      Provider.of<ShoppingBagProvider>(
                                              context,
                                              listen: false)
                                          .addProductToBag(_product);
                                      setState(() {
                                        _isLoading = true;
                                      });

                                      Future.delayed(
                                          Duration(
                                              milliseconds: 1000),
                                          () {
                                        _isLoading = false;
                                        _mBtnColorChanged = true;
                                        setState(() {});
                                      });
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 10,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => Navigator.of(context).pop(),
                      child: CircleAvatar(
                        backgroundColor: kAccentColor,
                        radius: 15,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container productColorDetails() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Colors',
            softWrap: true,
            style: TextStyle(
                fontSize: fontSize(size: 17),
                color: kAccentColor,
                fontWeight: FontWeight.w900),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isOpen = !_isOpen;
              });
            },
            child: Container(
              child: Row(
                children: [
                  Text(
                    _mColorName,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: fontSize(size: 17),
                        color: kAccentColor,
                        fontWeight: FontWeight.w900),
                  ),
                  SpacerWidth(size: 3),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(int.parse(_mColorCode)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      (_isOpen)
                          ? SimpleLineIcons.arrow_up
                          : SimpleLineIcons.arrow_down,
                      color: kAccentColor,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container productColorList() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          ...List.generate(
              mColorList.length,
              (index) => InkWell(
                    onTap: () {
                      setState(() {
                        _mColorName = mColorList[index].name;
                        _mColorCode = mColorList[index].codeColor;
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: (mColorList[index].available)
                                      ? 2.5
                                      : 0,
                                  color: (mColorList[index].available)
                                      ? kAccentColor
                                      : Colors.transparent),
                              color: Color(int.parse(
                                  mColorList[index].codeColor))),
                        ),
                        (!mColorList[index].available)
                            ? NotAvailableProduct()
                            : Container()
                      ],
                    ),
                  ))
        ],
      ),
    );
  }

  AnimatedContainer paginateImage({int index}) {
    return AnimatedContainer(
      duration: Duration(microseconds: 10),
      child: Container(
        height: 2,
        width: 30,
        color: _mSlideIndex == index
            ? Colors.black
            : Colors.black87.withOpacity(.08),
      ),
    );
  }
}

class Operator extends StatelessWidget {
  Operator({
    Key key,
    @required String mSign,
    this.onPress,
  })  : _mSign = mSign,
        super(key: key);

  final String _mSign;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Text(
        _mSign,
        style: TextStyle(
            color: kAccentColor,
            fontWeight: FontWeight.w700,
            fontSize: fontSize(size: 17)),
      ),
    );
  }
}

class NotAvailableProduct extends StatelessWidget {
  const NotAvailableProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF0ECEC).withOpacity(.5)),
        ),
        Positioned(
          top: -20,
          bottom: -20,
          right: 25,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(-45 / 360),
            child: Container(
              height: 50,
              width: 1.5,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
