import 'dart:async';
import 'dart:ui';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/core/DeliverTime.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/screens/bag_shopping_sccren/shopping_address_screen.dart';
import 'package:syed/widgets/buttons/loader_btn.dart';

class WindowsTimesScreen extends StatefulWidget {
  const WindowsTimesScreen({
    Key key,
  }) : super(key: key);

  @override
  _WindowsTimesScreenState createState() =>
      _WindowsTimesScreenState();
}

class _WindowsTimesScreenState extends State<WindowsTimesScreen> {
  bool _mIsDeliveryTimeSelected = false;
  List<int> _mSelectedItem = [];
  bool _mIsShowAllTimes = false, _mIsContinue = false;
  final String _mDefaultButtonText = "See All Delivery Windows";

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Container(
        height: (_mIsShowAllTimes)
            ? ConfigSize.screenHeight * .85
            : ConfigSize.screenHeight * .65,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              child: Text(
                'Select Your Delivery Time',
                softWrap: true,
                style: TextStyle(
                    color: kAccentColor,
                    fontSize: fontSize(size: 17),
                    fontWeight: FontWeight.w900),
              ),
            ),
            ListView.builder(
              itemCount: (_mIsShowAllTimes)
                  ? mTimeDeliverList.length
                  : mTimeDeliverList.take(4).length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                DeliverTime _mTimeDeliver = mTimeDeliverList[index];
                return InkWell(
                  onTap: () {
                    if (_mSelectedItem.isEmpty) {
                      setState(() {
                        _mSelectedItem.add(index);
                        _mIsDeliveryTimeSelected = true;
                      });
                    } else if (_mSelectedItem.elementAt(0) == index &&
                        _mIsDeliveryTimeSelected) {
                      setState(() {
                        _mSelectedItem.clear();
                        _mIsDeliveryTimeSelected = false;
                      });
                    } else {
                      setState(() {
                        _mSelectedItem.clear();
                        _mSelectedItem.add(index);
                        _mIsDeliveryTimeSelected = true;
                      });
                    }
                  },
                  child: ChoosenTimer(
                      mIsDeliveryTimeSelected:
                          (_mSelectedItem.contains(index)) ??
                              _mIsDeliveryTimeSelected,
                      mStartTimeDelivery: _mTimeDeliver.mStartTime,
                      mEndTimeDelivery: _mTimeDeliver.mEndTime),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: (_mIsShowAllTimes)
                          ? Colors.transparent
                          : kTextColor.withOpacity(.2),
                      width: 1.5)),
              child: ButtonTheme(
                minWidth: ConfigSize.screenWidth,
                height: 60,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: (_mIsShowAllTimes)
                      ? kPrimaryColor
                      : Colors.white,
                  child: (!_mIsContinue)
                      ? BTextWidget(
                          mIsShowAllTimes: _mIsShowAllTimes,
                          mDefaultButtonText: _mDefaultButtonText)
                      : LoaderButton(),
                  onPressed: () {
                    if (_mIsShowAllTimes) {
                      if (_mSelectedItem.isEmpty) {
                        return Flushbar(
                          backgroundColor: kAccentColor,
                          leftBarIndicatorColor: Colors.yellow,
                          icon: Icon(
                            Feather.alert_triangle,
                            color: Colors.amber,
                            size: 20,
                          ),
                          message:
                              'You must choose a window time delivery to continue',
                          flushbarPosition: FlushbarPosition.TOP,
                          animationDuration:
                              Duration(milliseconds: 1000),
                          duration: Duration(milliseconds: 3000),
                        ).show(context);
                      } else {
                        setState(() {
                          _mIsContinue = true;
                        });
                        Timer(Duration(milliseconds: 1000), () {
                          setState(() {
                            _mIsContinue = false;
                          });
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) =>
                                  ShoppingAddressScreen());
                        });
                      }
                    } else {
                      setState(() {
                        _mIsShowAllTimes = true;
                      });
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BTextWidget extends StatelessWidget {
  const BTextWidget({
    Key key,
    @required bool mIsShowAllTimes,
    @required String mDefaultButtonText,
  })  : _mIsShowAllTimes = mIsShowAllTimes,
        _mDefaultButtonText = mDefaultButtonText,
        super(key: key);

  final bool _mIsShowAllTimes;
  final String _mDefaultButtonText;

  @override
  Widget build(BuildContext context) {
    return Text(
      (_mIsShowAllTimes) ? 'Continue' : _mDefaultButtonText,
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: (_mIsShowAllTimes) ? Colors.white : kAccentColor,
          fontWeight: FontWeight.w700,
          fontSize: fontSize(size: 16)),
    );
  }
}

class ChoosenTimer extends StatelessWidget {
  const ChoosenTimer({
    Key key,
    @required bool mIsDeliveryTimeSelected,
    @required String mStartTimeDelivery,
    @required String mEndTimeDelivery,
  })  : _mIsDeliveryTimeSelected = mIsDeliveryTimeSelected,
        _mStartTimeDelivery = mStartTimeDelivery,
        _mEndTimeDelivery = mEndTimeDelivery,
        super(key: key);

  final bool _mIsDeliveryTimeSelected;
  final String _mStartTimeDelivery;
  final String _mEndTimeDelivery;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 70),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: (_mIsDeliveryTimeSelected)
              ? kAccentColor
              : kTextColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Today',
              softWrap: true,
              style: TextStyle(
                  fontSize: fontSize(size: 11),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        _mStartTimeDelivery,
                        softWrap: true,
                        style: TextStyle(
                            color: (_mIsDeliveryTimeSelected)
                                ? Colors.white
                                : kAccentColor,
                            fontWeight: FontWeight.w800,
                            fontSize: fontSize(size: 15)),
                      ),
                      Text(
                        '-',
                        softWrap: true,
                        style: TextStyle(
                            color: (_mIsDeliveryTimeSelected)
                                ? Colors.white
                                : kAccentColor,
                            fontWeight: FontWeight.w800,
                            fontSize: fontSize(size: 15)),
                      ),
                      Text(
                        _mEndTimeDelivery,
                        softWrap: true,
                        style: TextStyle(
                            color: (_mIsDeliveryTimeSelected)
                                ? Colors.white
                                : kAccentColor,
                            fontWeight: FontWeight.w800,
                            fontSize: fontSize(size: 15)),
                      )
                    ],
                  ),
                ),
                (_mIsDeliveryTimeSelected)
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 19,
                      )
                    : Text('')
              ],
            ),
          )
        ],
      ),
    );
  }
}
