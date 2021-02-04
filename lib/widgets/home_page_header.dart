import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Text(
                    'Your Shop',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: fontSize(size: 30),
                      fontWeight: FontWeight.w900,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..color = kAccentColor
                        ..strokeWidth = 1.1,
                    ),
                  ),
                  Text(
                    'Your Shop',
                    softWrap: true,
                    style: TextStyle(
                        fontSize: fontSize(size: 30),
                        color: kAccentColor,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.5),
                child: Text(
                  'Delivered in 2 hours',
                  softWrap: true,
                  style: TextStyle(fontSize: fontSize(size: 11)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Feather.map_pin,
                color: kPrimaryColor,
              ),
              SpacerWidth(size: 5),
              Text(
                '90210',
                softWrap: true,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize(size: 16)),
              )
            ],
          )
        ],
      ),
    );
  }
}
