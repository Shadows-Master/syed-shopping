import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';

class BrandProductsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
                size: 16,
                color: kAccentColor,
              ),
              onPressed: () => Navigator.of(context).popAndPushNamed('/')),
          title: Text(
            'Brands',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontSize: fontSize(size: 19),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
