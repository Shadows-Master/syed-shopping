import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class OrderPageView extends StatelessWidget {
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
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Orders',
                    softWrap: true,
                    style: TextStyle(
                        color: kAccentColor,
                        fontWeight: FontWeight.w700,
                        fontSize: fontSize(size: 23)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No Orders Placed yet',
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
                        "You'll be able to track your orders and view your order history here.",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
