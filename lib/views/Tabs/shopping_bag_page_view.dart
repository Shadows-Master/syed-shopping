import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class ShoppingBagPageView extends StatelessWidget {
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
                    'Shopping Bag',
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
